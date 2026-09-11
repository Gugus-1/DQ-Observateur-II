frequency = 8e5; %Hz
step_size = 1/frequency; 
sub_step_size = step_size/10;


gain_dspace = 10; 
attenuation_mesure = 1;


% conf.det.nombre_tour_sonde = 50;    % Number wire turns for current measure
V=80;
gain_ampli=20;
Qm = 60;                % Quality factor


k = 6; % Facteur de vitesse pour Luenberger

% m=0.045; %without ice
% Ks=6.35e5; %without ice
% N=0.012; %without ice

% C0_start = 13e-9;
% L=[7,2;-2,7];

%L=[170,-22;22,170 ;0.005,0.005];

% Fstart=1200; % fréquence haute de démarrage du scan


%   Champs de grandeurs_modales — matrices K×P, ligne = mode (freq. croissante), colonne = plaque :
%       f        (Hz) — fréquence propre (court-circuit)
%       M        (kg) — masse grandeurs_modalese  M = ∫ρ|u|²dV / max|u|²
%       Ks       (N/m) — raideur grandeurs_modalese  Ks = (2πf)²·M
%       N        (N/V ou C/m) — couplage électromécanique grandeurs_modales  N = q/x
%       C0       (F) — capacité bloquée, 1×P (par plaque, pas par mode)
%       n_modes  (-) — nombre réel de modes par plaque, 1×P : borne de k_mode
%       noms     (-) — nom de chaque plaque, cell 1×P

grandeurs_modales = load('grandeurs_modales.mat').MODAL;
nb_plaques        = numel(grandeurs_modales.n_modes);

plaque_init = 1;
mode_init = 1;