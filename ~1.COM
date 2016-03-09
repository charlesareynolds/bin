./compare_cshrcs /nif/environment/.cshrc.example /home/reynolds12/.cshrc aa-dev2 nif-controls-b490
./compare_cshrcs /nif/environment/test/.cshrc.baseline /nif/environment/.cshrc.example aa-dev2 nif-controls-b490

run_and_log ./compare_cshrcs /nif/environment/test/.cshrc.example.baseline /home/reynolds12/.cshrc aa-dev2 nif-controls-b490

# 2010/10/13 reynolds12 IC-16753: Took out dump .cshrc, hid local aliases

diff dump_env_baseline_on_linux.log dump_env_changed_on_linux.log;

 sdiff -s -w 160 dump_env_baseline_on_linux.log dump_env_changed_on_linux.log

run_and_log ./compare_envs /home/ics-ops/.cshrc nif/working/reynolds/nif-cm1/ICCS/ICCS_dev1/environment/.cshrc.example testserver1-b490 
run_and_log ./compare_envs /nif/environment/test/.cshrc.example.baseline /home/reynolds12/.cshrc nif-controls-b490 aa-dev1
run_and_log ./compare_envs /nif/environment/test/.cshrc.example.baseline /nif/environment/test/.cshrc.example.baseline aa-dev2 aa-dev4
run_and_log ./compare_envs /nif/environment/test/.cshrc.example.baseline /nif/environment/test/.cshrc.example.baseline nif-controls-b490 deuce

run_and_log ./compare_envs /home/stout6/.cshrc /home/reynolds12/.cshrc aa-dev1 nif-controls-b490

