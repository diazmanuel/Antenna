'# MWS Version: Version 2018.0 - Oct 26 2017 - ACIS 27.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 1 fmax = 18
'# created = '[VERSION]2018.0|27.0.2|20171026[/VERSION]


'@ use template: Antenna - Waveguide_25.cfg

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
'set the units
With Units
    .Geometry "mm"
    .Frequency "GHz"
    .Voltage "V"
    .Resistance "Ohm"
    .Inductance "H"
    .TemperatureUnit  "Kelvin"
    .Time "ns"
    .Current "A"
    .Conductance "Siemens"
    .Capacitance "F"
End With
'----------------------------------------------------------------------------
Plot.DrawBox True
With Background
     .Type "Normal"
     .Epsilon "1.0"
     .Mu "1.0"
     .XminSpace "0.0"
     .XmaxSpace "0.0"
     .YminSpace "0.0"
     .YmaxSpace "0.0"
     .ZminSpace "0.0"
     .ZmaxSpace "0.0"
End With
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
End With
' switch on FD-TET setting for accurate farfields
FDSolver.ExtrudeOpenBC "True"
Mesh.FPBAAvoidNonRegUnite "True"
Mesh.ConsiderSpaceForLowerMeshLimit "False"
Mesh.MinimumStepNumber "5"
With MeshSettings
     .SetMeshType "Hex"
     .Set "RatioLimitGeometry", "20"
End With
With MeshSettings
     .SetMeshType "HexTLM"
     .Set "RatioLimitGeometry", "20"
End With
PostProcess1D.ActivateOperation "vswr", "true"
PostProcess1D.ActivateOperation "yz-matrices", "true"
With FarfieldPlot
	.ClearCuts ' lateral=phi, polar=theta
	.AddCut "lateral", "0", "1"
	.AddCut "lateral", "90", "1"
	.AddCut "polar", "90", "1"
End With
'----------------------------------------------------------------------------
With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 1%
End With
With Mesh
     .MeshType "PBA"
End With
'set the solver type
ChangeSolverType("HF Time Domain")

'@ Solidworks Live-Link with ANTENNA_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
LiveLink.Synchronize "ANTENNA_1"
' Import the model file into cst.
With SOLIDWORKS
    .Reset
    .Healing "1"
    .ScaleToUnit "0"
    .FileName "C:\Users\Manuel\Documents\ME2\Diseño Real\V2\Piezas\ANTENNA.SLDASM"
    .Id "1"
    .ImportAttributes "True"
    .ImportHiddenEntities "True"
    .Read
End With

'@ define material: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "Silver"
     .Folder ""
.FrqType "static"
.Type "Normal"
.SetMaterialUnit "Hz", "mm"
.Epsilon "1"
.Mu "1.0"
.Kappa "6.3012e007"
.TanD "0.0"
.TanDFreq "0.0"
.TanDGiven "False"
.TanDModel "ConstTanD"
.KappaM "0"
.TanDM "0.0"
.TanDMFreq "0.0"
.TanDMGiven "False"
.TanDMModel "ConstTanD"
.DispModelEps "None"
.DispModelMu "None"
.DispersiveFittingSchemeEps "General 1st"
.DispersiveFittingSchemeMu "General 1st"
.UseGeneralDispersionEps "False"
.UseGeneralDispersionMu "False"
.FrqType "all"
.Type "Lossy metal"
.MaterialUnit "Frequency", "GHz"
.MaterialUnit "Geometry", "mm"
.MaterialUnit "Time", "s"
.MaterialUnit "Temperature", "Kelvin"
.Mu "1.0"
.Sigma "6.3012e007"
.Rho "10500.0"
.ThermalType "Normal"
.ThermalConductivity "429"
.HeatCapacity "0.23"
.MetabolicRate "0"
.BloodFlow "0"
.VoxelConvection "0"
.MechanicsType "Isotropic"
.YoungsModulus "76"
.PoissonsRatio "0.37"
.ThermalExpansionRate "20"
.ReferenceCoordSystem "Global"
.CoordSystemType "Cartesian"
.NLAnisotropy "False"
.NLAStackingFactor "1"
.NLADirectionX "1"
.NLADirectionY "0"
.NLADirectionZ "0"
.Colour "1", "1", "0"
.Wireframe "False"
.Reflection "False"
.Allowoutline "True"
.Transparentoutline "False"
.Transparency "0"
.Create
End With

'@ change material: ANTENNA:ALETA-3#ALETA to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:ALETA-3#ALETA", "Silver"

'@ change material: ANTENNA:ALETA-4#ALETA to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:ALETA-4#ALETA", "Silver"

'@ change material: ANTENNA:CAJA-2#CAJA to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:CAJA-2#CAJA", "Silver"

'@ change material: ANTENNA:CAJA-2#CAJA_1 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:CAJA-2#CAJA_1", "Silver"

'@ change material: ANTENNA:CAJA-2#CAJA_2 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:CAJA-2#CAJA_2", "Silver"

'@ change material: ANTENNA:CAJA-2#CAJA_3 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:CAJA-2#CAJA_3", "Silver"

'@ change material: ANTENNA:CAJA-2#CAJA_4 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:CAJA-2#CAJA_4", "Silver"

'@ change material: ANTENNA:JOROBA-1-2#JOROBA-1 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:JOROBA-1-2#JOROBA-1", "Silver"

'@ change material: ANTENNA:JOROBA-1-2#JOROBA-1_1 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:JOROBA-1-2#JOROBA-1_1", "Silver"

'@ change material: ANTENNA:JOROBA-1-2#JOROBA-1_2 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:JOROBA-1-2#JOROBA-1_2", "Silver"

'@ change material: ANTENNA:JOROBA-2-2#JOROBA-2 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:JOROBA-2-2#JOROBA-2", "Silver"

'@ change material: ANTENNA:Pieza4-3#Pieza4 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:Pieza4-3#Pieza4", "Silver"

'@ change material: ANTENNA:Pieza5-3#Pieza5 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:Pieza5-3#Pieza5", "Silver"

'@ change material: ANTENNA:Pieza6-3#Pieza6 to: Silver

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:Pieza6-3#Pieza6", "Silver"

'@ define material: PTFE (loss free)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "PTFE (loss free)"
     .Folder ""
.FrqType "all"
.Type "Normal"
.SetMaterialUnit "GHz", "mm"
.Epsilon "2.1"
.Mu "1.0"
.Kappa "0.0"
.TanD "0.0"
.TanDFreq "0.0"
.TanDGiven "False"
.TanDModel "ConstTanD"
.KappaM "0.0"
.TanDM "0.0"
.TanDMFreq "0.0"
.TanDMGiven "False"
.TanDMModel "ConstKappa"
.DispModelEps "None"
.DispModelMu "None"
.DispersiveFittingSchemeEps "General 1st"
.DispersiveFittingSchemeMu "General 1st"
.UseGeneralDispersionEps "False"
.UseGeneralDispersionMu "False"
.Rho "2200.0"
.ThermalType "Normal"
.ThermalConductivity "0.2"
.HeatCapacity "1.0"
.SetActiveMaterial "all"
.MechanicsType "Isotropic"
.YoungsModulus "0.5"
.PoissonsRatio "0.4"
.ThermalExpansionRate "140"
.Colour "0.75", "0.95", "0.85"
.Wireframe "False"
.Transparency "0"
.Create
End With

'@ change material: ANTENNA:Pieza5-3#Pieza5 to: PTFE (loss free)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "ANTENNA:Pieza5-3#Pieza5", "PTFE (loss free)"

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "ANTENNA:Pieza4-3#Pieza4", "3"

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "ANTENNA:Pieza6-3#Pieza6", "4"

'@ define frequency range

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solver.FrequencyRange "1", "18"

'@ define port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-5.5291729823774", "-0.92917298237738" 
     .Yrange "89.784604613203", "89.784604613203" 
     .Zrange "7.4113268684472", "12.011326868447" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ define farfield monitor: farfield (f=1)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=1)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "1" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-15.288673131554", "104.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define monitor: e-field (f=2)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=2)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "2" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-15.288673131554", "104.71145924369" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ transform: translate ANTENNA

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "ANTENNA" 
     .Vector "0", "0", "10" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate ANTENNA

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "ANTENNA" 
     .Vector "0", "0", "3" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate ANTENNA

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "ANTENNA" 
     .Vector "0", "0", "2" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ delete monitor: e-field (f=2)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Monitor.Delete "e-field (f=2)"

'@ define farfield monitor: farfield (f=2)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=2)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "2" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=3)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=3)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "3" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=4)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=4)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "4" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define monitor: e-field (f=5)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=5)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "5" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define farfield monitor: farfield (f=6)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=6)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "6" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ delete monitors

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Monitor.Delete "e-field (f=5)" 
Monitor.Delete "farfield (f=6)"

'@ define farfield monitor: farfield (f=5)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=5)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "5" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=6)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=6)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "6" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=7)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=7)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "7" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=8)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=8)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "8" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=9)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=9)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "9" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define monitor: e-field (f=10)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=10)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "10" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define farfield monitor: farfield (f=11)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=11)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "11" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ delete monitors

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Monitor.Delete "e-field (f=10)" 
Monitor.Delete "farfield (f=11)"

'@ define farfield monitor: farfield (f=10)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=10)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "10" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=11)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=11)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "11" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=12)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=12)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "12" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=13)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=13)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "13" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=14)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=14)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "14" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=15)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=15)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "15" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=16)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=16)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "16" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=17)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=17)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "17" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=18)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=18)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "18" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ define farfield monitor: farfield (f=2.4)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=2.4)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "2.4" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-38.060528649523", "31.939471350477", "16.339548162956", "101.22966106345", "-0.28867313155435", "119.71145924369" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .Create 
End With

'@ set mesh properties (Hexahedral)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Mesh 
     .MeshType "PBA" 
     .SetCreator "High Frequency"
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "Version", 1%
     'MAX CELL - WAVELENGTH REFINEMENT 
     .Set "StepsPerWaveNear", "10" 
     .Set "StepsPerWaveFar", "10" 
     .Set "WavelengthRefinementSameAsNear", "1" 
     'MAX CELL - GEOMETRY REFINEMENT 
     .Set "StepsPerBoxNear", "20" 
     .Set "StepsPerBoxFar", "1" 
     .Set "MaxStepNear", "0" 
     .Set "MaxStepFar", "0" 
     .Set "ModelBoxDescrNear", "maxedge" 
     .Set "ModelBoxDescrFar", "maxedge" 
     .Set "UseMaxStepAbsolute", "0" 
     .Set "GeometryRefinementSameAsNear", "0" 
     'MIN CELL 
     .Set "UseRatioLimitGeometry", "1" 
     .Set "RatioLimitGeometry", "20" 
     .Set "MinStepGeometryX", "0" 
     .Set "MinStepGeometryY", "0" 
     .Set "MinStepGeometryZ", "0" 
     .Set "UseSameMinStepGeometryXYZ", "1" 
End With 
With MeshSettings 
     .Set "PlaneMergeVersion", "2" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "FaceRefinementOn", "0" 
     .Set "FaceRefinementPolicy", "2" 
     .Set "FaceRefinementRatio", "2" 
     .Set "FaceRefinementStep", "0" 
     .Set "FaceRefinementNSteps", "2" 
     .Set "EllipseRefinementOn", "0" 
     .Set "EllipseRefinementPolicy", "2" 
     .Set "EllipseRefinementRatio", "2" 
     .Set "EllipseRefinementStep", "0" 
     .Set "EllipseRefinementNSteps", "2" 
     .Set "FaceRefinementBufferLines", "3" 
     .Set "EdgeRefinementOn", "1" 
     .Set "EdgeRefinementPolicy", "1" 
     .Set "EdgeRefinementRatio", "2" 
     .Set "EdgeRefinementStep", "0" 
     .Set "EdgeRefinementBufferLines", "3" 
     .Set "RefineEdgeMaterialGlobal", "0" 
     .Set "RefineAxialEdgeGlobal", "0" 
     .Set "BufferLinesNear", "3" 
     .Set "UseDielectrics", "1" 
     .Set "EquilibrateOn", "0" 
     .Set "Equilibrate", "1.5" 
     .Set "IgnoreThinPanelMaterial", "0" 
End With 
With MeshSettings 
     .SetMeshType "Hex" 
     .Set "SnapToAxialEdges", "1"
     .Set "SnapToPlanes", "1"
     .Set "SnapToSpheres", "1"
     .Set "SnapToEllipses", "1"
     .Set "SnapToCylinders", "1"
     .Set "SnapToCylinderCenters", "1"
     .Set "SnapToEllipseCenters", "1"
End With 
With Discretizer 
     .ConnectivityCheck "False"
     .UsePecEdgeModel "True" 
     .GapDetection "False" 
     .FPBAGapTolerance "1e-3" 
     .PointAccEnhancement "0" 
     .UseTST2 "False"
	  .PBAVersion "20171026" 
End With

'@ define time domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ farfield plot options

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With FarfieldPlot 
     .Plottype "3D" 
     .Vary "angle1" 
     .Theta "90" 
     .Phi "90" 
     .Step "5" 
     .Step2 "5" 
     .SetLockSteps "True" 
     .SetPlotRangeOnly "False" 
     .SetThetaStart "0" 
     .SetThetaEnd "180" 
     .SetPhiStart "0" 
     .SetPhiEnd "360" 
     .SetTheta360 "False" 
     .SymmetricRange "False" 
     .SetTimeDomainFF "False" 
     .SetFrequency "-1" 
     .SetTime "0" 
     .SetColorByValue "True" 
     .DrawStepLines "False" 
     .DrawIsoLongitudeLatitudeLines "False" 
     .ShowStructure "True" 
     .ShowStructureProfile "True" 
     .SetStructureTransparent "False" 
     .SetFarfieldTransparent "False" 
     .SetSpecials "enablepolarextralines" 
     .SetPlotMode "Directivity" 
     .Distance "1" 
     .UseFarfieldApproximation "True" 
     .SetScaleLinear "False" 
     .SetLogRange "40" 
     .SetLogNorm "0" 
     .DBUnit "0" 
     .EnableFixPlotMaximum "False" 
     .SetFixPlotMaximumValue "1" 
     .SetInverseAxialRatio "False" 
     .SetAxesType "user" 
     .SetAntennaType "unknown" 
     .Phistart "1.000000e+00", "0.000000e+00", "0.000000e+00" 
     .Thetastart "0.000000e+00", "0.000000e+00", "1.000000e+00" 
     .PolarizationVector "0.000000e+00", "1.000000e+00", "0.000000e+00" 
     .SetCoordinateSystemType "spherical" 
     .SetAutomaticCoordinateSystem "True" 
     .SetPolarizationType "Linear" 
     .SlantAngle 0.000000e+00 
     .Origin "bbox" 
     .Userorigin "0.000000e+00", "0.000000e+00", "0.000000e+00" 
     .SetUserDecouplingPlane "False" 
     .UseDecouplingPlane "False" 
     .DecouplingPlaneAxis "X" 
     .DecouplingPlanePosition "0.000000e+00" 
     .LossyGround "False" 
     .GroundEpsilon "1" 
     .GroundKappa "0" 
     .EnablePhaseCenterCalculation "False" 
     .SetPhaseCenterAngularLimit "3.000000e+01" 
     .SetPhaseCenterComponent "boresight" 
     .SetPhaseCenterPlane "both" 
     .ShowPhaseCenter "True" 
     .ClearCuts 
     .AddCut "lateral", "0", "1"  
     .AddCut "lateral", "90", "1"  
     .AddCut "polar", "90", "1"  
     .StoreSettings
End With 

'@ delete port: port1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.Delete "1" 


'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "ANTENNA:Pieza4-3#Pieza4", "3" 


'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "ANTENNA:Pieza6-3#Pieza6", "4" 


'@ define port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-5.5291729823774", "-0.92917298237738" 
     .Yrange "89.784604613203", "89.784604613203" 
     .Zrange "22.411326868447", "27.011326868447" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With 


