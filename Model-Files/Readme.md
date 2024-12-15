# Parameterized Retina Model

This is a parameterized model of the retina that can be used to simulate the impact of photoreceptor loss and inner retinal network changes on the electrical activity of the retina. 

## To run the model

1. Install Python 3.10 and NEURON
2. Compile the mod files by running `nrnivmodl` in the terminal
3. Start NEURON with `nrniv`
4. Load the model by running `load_file("init_ON_OFF.hoc")`
5. Run the simulation by clicking the `Run` button in the NEURON GUI
6. Collect the data in the `Outputs` folder

## Key parameters

The key parameters of the model are:

1. `Create_random_ON_OFF_Cells.hoc:17` **Cell Densities**: The density of different cell types in different retinal layers
2. `Create_random_ON_OFF_Cells.hoc:175` **Photoreceptor Loss**: The ON/OFF switch and percentage of photoreceptors that are lost
3. `Create_random_ON_OFF_Cells.hoc:1935` **Create_Bipolar_Input**: The parameters of the current injectors
4. `init_ON_OFF.hoc:8` **dt**: Simulation Time Step, Default: 0.1ms
5. `init_ON_OFF.hoc:30` **tstop**: Simulation Duration, Default: 2000ms

## References

Based on K. Ly et al., “Simulating the impact of photoreceptor loss and inner retinal network changes on electrical activity of the retina,” Journal of Neural Engineering, vol. 19, no. 6, p. 065002, Nov. 2022. doi:10.1088/1741-2552/aca221