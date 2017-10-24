%limpa ambiente
clear
clf

%carrega os dados
coords
massas
rigidezes

%conta massas
N = length(X);

%incidencias de molas
Nm = 0.5*(nnz(K) - size(K,1));
incid = zeros(Nm,2);
l = 1;
for i = 1:N
    for j = (i+1):N
        if (K(i,j) ~= 0)
            incid(l,:) = [i,j];
            l = l + 1;
        end
    end
end

%plota
plota

%encontra modos e frequências
[V,A] = eig(K,M);
for i = 1:N
    V(:,i) = V(:,i)/max(abs(V(:,i)));
end
w = sqrt(diag(A));

%mostra resultados
anima

%frf