using XGBoost, CSV, DataFrames, Plots

# Load dataset
df = CSV.read("../data/Filtered/AGZD_fixed.csv", DataFrame; header=true)

# Remove the date column (assuming it's the first column)
df = df[:, 2:end]

# Convert all columns to Float64 (in case any are strings)
df = mapcols(x -> x isa AbstractVector{AbstractString} ? parse.(Float64, x) : x, df)

# Separate target (Y) and features (X)
Y, X = df[:, end], df[:, 1:end-1]

# Convert DataFrame to matrix (XGBoost expects matrices)
X_train = Matrix(X)
Y_train = Vector(Y)

# Create an XGBoost DMatrix
dtrain = DMatrix(X_train, label=Y_train)

# Define XGBoost parameters
params = Dict(
    "objective" => "reg:squarederror",
    "eval_metric" => "rmse",
    "max_depth" => 6,
    "eta" => 0.1,
    "n_estimators" => 100
)

# Train the XGBoost model
booster = xgboost(dtrain, num_round=100, params=params)

# Make predictions
Y_pred = predict(booster, dtrain)

println("Predictions: ", Y_pred)

#actuals vs the predictions
plot(1:length(Y_train), Y_train, label="Actuals", lw=2, color=:blue)
plot!(1:length(Y_pred), Y_pred, label="Predicted", lw=2, color=:red, linestyle=:dash)

xlabel!("Index")
ylabel!("Values")

savefig("Actuals_vs_Predicted.png")

display(plot())

