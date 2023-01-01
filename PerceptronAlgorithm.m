clear all;
%Define Extended Feature vector
X = [-2 1;1 1;3 1;5 1];
%Defining x=1.6 for question number (e)
X_test = [1.6;1];
X=X';
%Define Label vector
y = [1 1 -1 -1];
%Define delta vector which is just the negative of the label vector
delta=-y;
%Define initial weights as per the question
w_ini = [1; 0];  
%Function Call to get the weights
w=perceptron(X,w_ini,delta);
%Question number (e)
%If the value of w'X is negative, then x lies in class 2
%If the value of w'X is positive, then x lies in class 1
fprintf ("Classification for x = 1.6 :");
display(w'*X_test);
%Function definationn of Perceptron algorithm
function w=perceptron(X,w_ini,delta)
    [l,N]=size(X);
    max_iter=10000; % Maximum allowable number of iterations
    w=w_ini; % Initialization of the parameter vector
    iter=0; % Iteration counter
    mis_clas=N; % Number of misclassified vectors
    rho=1; % Learning rate
    %Condition to check for convergence
    while (mis_clas>0) && (iter<max_iter)
        mis_clas=0;
        gradi=zeros(l,1);
        % Computation of the "gradient" term
        for i=1:N
            if((w'*X(:,i))*delta(i)>=0)
                mis_clas=mis_clas+1;
                gradi=gradi+(delta(i)*X(:,i));
            end
        end
        display(iter);
        display(mis_clas);
        w=w-rho*gradi; % Updating the parameter vector
        rho=1/(iter+1);
        iter=iter+1;
    end
end
