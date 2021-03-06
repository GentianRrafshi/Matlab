function value = pvget(W,property)

switch lower(property)
    case {'setprops','getprops'}
        value = {...
            'FinalCostMatrix',...
            'InitialInput',...
            'InputL2Norm',...
            'MaxIter',...
            'Objective',...
            'ODEOptions',...
            'ODESolver',...
            'PartialsFunc',...
            'PerturbationSize',...
            'PlotProgress',...
            'Tol',...
            'UncertainParamRange'};
    case 'setvalues'
        value = {...
            ': (n by n) double array',...
            ': [ ones | rand | randn ] -or- (m by n) double array',...
            ': positive scalar',...
            ': positive integer',...
            ': [  L2 | LInfinity ]',...
            ': struct created by ODESET',...
            ': [ ode45 | ode15s ] -or- function_handle',...
            ': function_handle -or- string',...
            ': function_handle',...
            ': [ none | text | plot ]',...
            ': positive scalar',...
            ': (n by 2) double array'};
    case 'finalcostmatrix'
        value = W.FinalCostMatrix;
    case 'initialinput'
        value = W.InitialInput;
    case 'objective'
        value = W.Objective;
    case 'odeoptions'
        value = W.ODEOptions;
    case 'odesolver'
        value = W.ODESolver;
    case 'partialsfunc'
        value = W.PartialsFunc;
    case 'plotprogress'
        value = W.PlotProgress;
    case 'perturbationsize'
        value = W.PerturbationSize;
    case 'inputl2norm'
        value = W.InputL2Norm;
    case 'tol'
        value = W.Tol;
    case 'maxiter'
        value = W.MaxIter;
    case 'uncertainparamrange'
        value = W.UncertainParamRange;
    otherwise
        error('Invalid property name')
end
