ek_results_1 = [max_ek(1) max_ek(2) max_ek(3) max_ek(4) max_ek(5) max_ek(6) max_ek(7) max_ek(8) max_ek(9) max_ek(10) max_ek(11) max_ek(12) max_ek(13) max_ek(14) max_ek(15) max_ek(16) max_ek(17) max_ek(18) max_ek(19) max_ek(20) max_ek(21) max_ek(22) max_ek(23) max_ek(24) max_ek(25) max_ek(26) max_ek(27) max_ek(28) max_ek(29) max_ek(30) max_ek(31) max_ek(32) max_ek(33) max_ek(34) max_ek(35) max_ek(36) max_ek(37) max_ek(38) max_ek(39) max_ek(40)]
k_domain_1 = 1:1:40
plot(k_domain_1,ek_results_1)

%ek_results_2 = [spline(2) spline(3) spline(4) spline(5) spline(6) spline(7) spline(8) spline(9) spline(10) spline(11) spline(12) spline(13) spline(14) spline(15) spline(16) spline(17) spline(18) spline(19) spline(20) spline(21) spline(22) spline(23) spline(24) spline(25) spline(26) spline(27) spline(28) spline(29) spline(30) spline(31) spline(32) spline(33) spline(34) spline(35) spline(36) spline(37) spline(38) spline(39) spline(40)]
ek_results_2 = [spline(7) spline(8) spline(9) spline(10) spline(11) spline(12) spline(13) spline(14) spline(15) spline(16) spline(17) spline(18) spline(19) spline(20) spline(21) spline(22) spline(23) spline(24) spline(25) spline(26) spline(27) spline(28) spline(29) spline(30) spline(31) spline(32) spline(33) spline(34) spline(35) spline(36) spline(37) spline(38) spline(39) spline(40)]
%ek_results_2 = [spline(8)  spline(10) spline(12) spline(14) spline(16) spline(18) spline(20) spline(22) spline(24) spline(26) spline(28) spline(30) spline(32) spline(34) spline(36) spline(38) spline(40)]

%k_domain_2 = 2:1:40
k_domain_2 = 7:1:40
%k_domain_2 = 8:2:40
plot(k_domain_2,ek_results_2)

x = log(1./k_domain_2).';
y = log(ek_results_2).';
X = [ones(length(x),1) x];
b = X\y;
plot(x,y);

