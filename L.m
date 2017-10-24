function [ L ] = L( i , j )
%L Summary of this function goes here
%   Detailed explanation goes here
coords
L = sqrt( (X(i)-X(j))^2 + (Y(i)-Y(j))^2 + (Z(i)-Z(j))^2 );

end

