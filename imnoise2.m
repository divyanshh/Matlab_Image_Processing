function R= imnoise2(type, varargin)
%IMNOISE2 generates an array of random numbers with specified PDF.
% R = IMNOISE2(TYPE, M,N,A,B) generates an array, R, of size M-by-N whose
% elements are random numbers of the specified TYPE with parameters A and
% B. If only TYPE is included in the input argument list, a single random
% number of the specified TYPE and default parameters shown below is
% generated. If only TYPE,M and N are provided, the defaultparameters shown
% below are used. If M=N=1, IMNOISE2 generates a single random number of
% the specified TYPE and parameters A and B.


%set defaults
[M,N,a,b]= setDefaults(type,varargin{:});
%Begin processing. Use lower(type) to protect against input being
%capitalized.
switch lower(type)
    case 'uniform'
        R=a+(b-a)*rand(M,N);
    case 'gaussian'
        R=a+b*randn(M,N);
    case 'salt & pepper'
        R=saltpepper(M,N,a,b);
    case 'lognormal'
        R=exp(b*randn(M,N)+a);
    case 'rayleigh'
        R=a+(-b*log(1-rand(M,N))).^0.5;
    case 'exponential'
        R=exponential(M,N,a);
    case 'erlang'
        R=erlang(M,N,a,b);
    otherwise
        error('unknown distribution type');
end
%----------------------------------------------------

function R=saltpepper(M,N,a,b)
%check to make sure that Pa+Pb is not >1
if(a+b)>1
    error('The sum Pa+Pb must not exceed 1')
end
R(1:M,1:N)=0.5;
%Generate an M-by-N array of uniformly-distributed random numbers in the
%range (0,1). Then, Pa*(M*N) of them will have values <= a. The coordinates
%of these points we call 0 (pepper noise). similarly, Pb*(M*N) points will
%have values in the range >a & <=(a+b). These we call 1 (salt noise).

X=rand(M,N);
R(X<=a)=0;
u=a+b;
R(X>a&X<=u)=1;
%-----------------------------------------------------

function R=exponential(M,N,a)
if a<=0
    error('Parameter a must be positive for exponential type')
end
k=-1/a;
R=k*log(1-rand(M,N));

%----------------------------------------------------
function R=erlang(M,N,a,b)
if (b~= round(b)||b<0)
    error('Param b must be a positive integer for Erlang')
end
k=-1/a;
R=zeros(M,N);
for j=1:b
    R=R+k*log(1-rand(M,N));
end
%----------------------------------------------------
    function varargout=setDefaults(type, varargin)
        varargout=varargin;
        P=numel(varargin);
        if P<4
            %Set default b.
            varargout{4}=1;
        end
        if P<3
            %Set default a
            varargout{3}=0;
        end
        if P<2
            %Set default N
            varargout{2}=1;
        end
        if P<1
            %set default M
            varargout{1}=1;
        end
        if (P<=2)
            switch type
                case 'salt & pepper'
                    %a=b=0.05
                    varargout{3}=0.05;
                    varargout{4}=0.05;
                case 'lognormal'
                    % a=1;b=0.25
                    varargout{3}=1;
                    varargout{4}=0.25;
                case 'exponential'
                    %a=1
                    varargout{3}=1;
                case 'Erlang'
                    %a=2; b=5
                    varargout{3}=2;
                    varargout{4}=5;
            end
        end
        