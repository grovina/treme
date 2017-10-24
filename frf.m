%lê os pontos desejados
a = input('primeira massa: ');
b = input('segunda massa: ');

beta = 1e-8;
cb = diag(V' * beta*K * V);
mb = diag(V' * M * V);


coisa = [];
for ome = 1:.1:1000
    H = zeros(20);
    for j = 1:N
        H = H + V(:,j)*[V(:,j)]' / (mb(j) * (w(j)^2 - ome^2 + 1i*cb(j)*ome));
    end
    H = abs(H);
    coisa(end+1,:) = [ome,H(a,b)];
end


figure(2);
clf
%hold on
semilogy(coisa(:,1),coisa(:,2));
figure(1);