function a = rot_Z3(phi)
% Clock-wise rotation about Z3
% Phi is in radians
a = [1,0,0;
    0,cos(phi),-sin(phi);
    0,sin(phi),cos(phi)];
end
function check_orthogonal(a)
% Check orthogonality of a
% Adjacent row are orthogonal
% Adjacent columns are orthogonal
for i = 1:2
assert(sum(a(:,i).*a(:,i+1))==0)
assert(sum(a(i,:).*a(i+1,:))==0)
end
fprintf("Matrix is orthogonal\n")
end
%% Define standard basis in 3D
Z{1} = [1,0,0];
Z{2} = [0,1,0];
Z{3} = [0,0,1];

% Plot basis
figure(1); clf; 
for i = 1:3
quiver3(0,0,0,Z{i}(1),Z{i}(2),Z{i}(3),AutoScale="off",Color="Black",LineWidth=2)
hold on
end
axis equal
xlabel("Z_1")
ylabel("Z_2")
zlabel("Z_3")
fontsize(18,"points")

%% Rotate 30 deg cc about Z3
phi = deg2rad(-30);
a = rot_Z3(phi);
fprintf("Matrix for 30 deg ccw rot about Z_3.\n")
disp(a)
check_orthogonal(a)
%% Rotate 30 deg cw rotation about Z3
phi = deg2rad(30);
a = rot_Z3(phi);
fprintf("Matrix for 30 deg cw rot about Z_3.\n")
disp(a)
check_orthogonal(a)
%% Rotate 30 deg ccw rotation about Z3
phi = deg2rad(-30);
a = rot_Z3(phi);
fprintf("Matrix for 30 deg ccw rot about Z_3'.\n")
disp(a')
check_orthogonal(a')




