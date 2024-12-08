This is the readme file for:

K. Ly, T. Guo, D. Tsai, M. Muralidharan, M. N. Shivdasani et al., "Simulating the 
impact of photoreceptor loss and inner retinal network changes on electrical 
activity of the retina," J Neural Eng, vol. 19, no. 6, 2022

These NEURON model files are contributed by Keith Ly.

RUNNING THE MODEL:
To initialise the model, compile all ".mod" files in the same folder. All associated 
procedures are included in the "Create_random_ON_OFF_Cells.hoc" file. To run the 
model, run "init_ON_OFF.hoc". You can then click the button "Run" in the created panels
to generate the session and run the model.

SAVING CELL RESPONSES:
All cell responses will be automatically saved into the directory "Outputs\Responses". 
If you do not want responses saved, you can comment out lines 34 and 35 in the 
"init_ON_OFF.hoc" file. This will speed up the runtime. Cell tracking matrices are 
saved to "Outputs\Tracking_Matrices" which contain pathway type (ON/OFF) as well as 
the X/Y positions of the corresponding cells.
If these cells responses are not saved, please delete all the ".csv" files in the 
directory and rerun the model. The model will automatically create these files and 
populate them with data.

MODIFYING NETWORK SIZE:
All model parameters are based on the size of the photoreceptor array. To change the 
size of the model, you can modify the "PRX" and "PRY" parameters in the "Create_
random_ON_OFF_Cells.hoc" file under line 53 and 54. Please check the nrniv console 
output to see the total number of cells for each cell type.
Note: due to the low density of horizontal cells, do not reduce PRX/PRY below 30.

MODIFYING RD CONDITIONS:
All retinal degeneration parameters are contained within lines 175-177 of "Create_Random_
ON_OFF_Cells.hoc".
"RD_Active" is the switching parameter and is set to 0 for wild-type and 1 for RD
"PR_Loss" is the fraction of photoreceptors lost and can be any value between 0 (no PR 
lost) and 1 (all PR lost)
"RD_Late_Active" is the amount of inner synapses/gap junctions remaining and can be any 
value between 1 (all syn/gap remaining) and 0 (no syn/gap remaining).

Note: the initial 1000 ms of this model results should be ignored as it does not reach 
steady-state until ~1000 ms.

GENERATING FIGURE RESULTS:
To generate the results in Figure 2B (light response):
Set parameter "RD_Active" to 0 (line 175), "PR_loss" to 0 (line 176), "RD_Late_Active" to
1 (line 177), "RodStimAmp" to 40 (line 200), "ConeStimAmp" to 40 (line 204).

To generate the results in Figure 3B (100% PR loss):
Set parameter "RD_Active" to 1 (line 175), "PR_loss" to 1 (line 176), "RD_Late_Active" to
1 (line 177), "RodStimAmp" to 0 (line 200), "ConeStimAmp" to 0 (line 204).

To generate the results in Figure 4A (Phase I/II RD):
Set parameter "RD_Active" to 1 (line 175), "PR_loss" to 0.4/0/7/0.9/1 depending on the 
amount of PR lost (line 176), "RD_Late_Active" to1 (line 177), "RodStimAmp" to 0 (line 200), 
"ConeStimAmp" to 0 (line 204).

To generate the results in Figure 5C (Phase III RD):
Set parameter "RD_Active" to 1 (line 175), "PR_loss" to 1 (line 176), "RD_Late_Active" to
1, 0.97, 0.95, 0.93 depending on inner RD remodellng (line 177), "RodStimAmp" to 0 (line 
200), "ConeStimAmp" to 0 (line 204).
