function [error_test] = testError(X_poly, y, Xtest, ytest, lambda)
  
  theta = trainLinearReg(X_poly, y, lambda);
  error_test = linearRegCostFunction(Xtest, ytest, theta, 0);
end