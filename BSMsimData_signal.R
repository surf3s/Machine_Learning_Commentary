# Code to simulate structured BSM data as multinomial RVs
# probability information from 
#
# Domínguez-Rodrigo, Manuel, S. De Juana, Ana Belén Galan, and Mathieu Rodríguez. 
# "A new protocol to differentiate trampling marks from butchery cut marks." 
# Journal of Archaeological Science 36, no. 12 (2009): 2643-2654.
# Table 5.
# https://doi.org/10.1016/j.jas.2009.07.017


##############################
####### Trampling Marks ######
##############################

Class <- as.data.frame(rep("trampling", 224))
colnames(Class)<- "Class"

# create n multinomial random variables of size = 1 and with probabilities = 
# the proportions of the mutually exclusive levels observed within each variable.

# Trajectory of the groove
v1_groove_traj<-rmultinom(n = 224, size = 1 ,prob = c(.298, .167, .534))
v1_groove_traj<-t(v1_groove_traj)
v1_groove_traj[which(v1_groove_traj[,1]==1),1]<-1
v1_groove_traj[which(v1_groove_traj[,2]==1),2]<-2
v1_groove_traj[which(v1_groove_traj[,3]==1),3]<-3
v1_groove_traj<-rowSums(v1_groove_traj)
v1_groove_traj
table(v1_groove_traj)/length(v1_groove_traj)

# Presence or absence of a barb
v2_barb<-rmultinom(n = 224, size = 1 ,prob = c(.024,.976))
v2_barb<-t(v2_barb)
v2_barb[which(v2_barb[,1]==1),1]<-1
v2_barb[which(v2_barb[,2]==1),2]<-0
v2_barb<-rowSums(v2_barb)
v2_barb
table(v2_barb)/length(v2_barb)

# Mark orientation 
v3_orientation<-rmultinom(n = 224, size = 1 ,
                  prob = c(.099, .08, .821))
v3_orientation<-t(v3_orientation)
v3_orientation[which(v3_orientation[,1]==1),1]<-1
v3_orientation[which(v3_orientation[,2]==1),2]<-2
v3_orientation[which(v3_orientation[,3]==1),3]<-3
v3_orientation<-rowSums(v3_orientation)
v3_orientation
table(v3_orientation)/length(v3_orientation)

# Groove shape
v4_groove_shape<-rmultinom(n = 224, size = 1 ,prob = c(.04,.96))
v4_groove_shape<-t(v4_groove_shape)
v4_groove_shape[which(v4_groove_shape[,1]==1),1]<-1
v4_groove_shape[which(v4_groove_shape[,2]==1),2]<-2
v4_groove_shape<-rowSums(v4_groove_shape)
v4_groove_shape
table(v4_groove_shape)/length(v4_groove_shape)

# Number of conspicuous Grooves
v5_groove_no<-rep("NA", length = 224)  

# Symmetry of the groove
v6_groove_symmetry<-rmultinom(n = 224, size = 1 ,prob = c(0.9003984,0.09960159))
v6_groove_symmetry<-t(v6_groove_symmetry)
v6_groove_symmetry[which(v6_groove_symmetry[,1]==1),1]<-1
v6_groove_symmetry[which(v6_groove_symmetry[,2]==1),2]<-2
v6_groove_symmetry<-rowSums(v6_groove_symmetry)
v6_groove_symmetry
table(v6_groove_symmetry)/length(v6_groove_symmetry)

# Shoulder effect
v7_shoulder_effect<-rmultinom(n = 224, size = 1 ,prob = c(.059, .941))
v7_shoulder_effect<-t(v7_shoulder_effect)
v7_shoulder_effect[which(v7_shoulder_effect[,1]==1),1]<-1
v7_shoulder_effect[which(v7_shoulder_effect[,2]==1),2]<-0
v7_shoulder_effect<-rowSums(v7_shoulder_effect)
v7_shoulder_effect
table(v7_shoulder_effect)/length(v7_shoulder_effect)

# Presence of flaking 
v8_flaking<-rmultinom(n = 224, size = 1 ,prob = c(.027, .973))
v8_flaking<-t(v8_flaking)
v8_flaking[which(v8_flaking[,1]==1),1]<-1
v8_flaking[which(v8_flaking[,2]==1),2]<-0
v8_flaking<-rowSums(v8_flaking)
v8_flaking
table(v8_flaking)/length(v8_flaking)

# Extent of the flaking
v9_extent_of_flaking<-rmultinom(n = 224, size = 1 ,prob = c(.07, .19, .972))
v9_extent_of_flaking<-t(v9_extent_of_flaking)
v9_extent_of_flaking[which(v9_extent_of_flaking[,1]==1),1]<-1
v9_extent_of_flaking[which(v9_extent_of_flaking[,2]==1),2]<-2
v9_extent_of_flaking[which(v9_extent_of_flaking[,3]==1),3]<-0
v9_extent_of_flaking<-rowSums(v9_extent_of_flaking)
v9_extent_of_flaking
table(v9_extent_of_flaking)/length(v9_extent_of_flaking)

# Striae overlapping
v10_stria_overlapping<-rmultinom(n = 224, size = 1 ,prob = c(.803, .197))
v10_stria_overlapping<-t(v10_stria_overlapping)
v10_stria_overlapping[which(v10_stria_overlapping[,1]==1),1]<-1
v10_stria_overlapping[which(v10_stria_overlapping[,2]==1),2]<-0
v10_stria_overlapping<-rowSums(v10_stria_overlapping)
v10_stria_overlapping
table(v10_stria_overlapping)/length(v10_stria_overlapping)

# Internal microstriations
v11_internal_micro_stria<-rmultinom(n = 224, size = 1 ,prob = c(.75, .25))
v11_internal_micro_stria<-t(v11_internal_micro_stria)
v11_internal_micro_stria[which(v11_internal_micro_stria[,1]==1),1]<-1
v11_internal_micro_stria[which(v11_internal_micro_stria[,2]==1),2]<-0
v11_internal_micro_stria<-rowSums(v11_internal_micro_stria)
v11_internal_micro_stria
table(v11_internal_micro_stria)/length(v11_internal_micro_stria)
v11_internal_micro_stria.abs<-which(v11_internal_micro_stria==0)

# Internal microstriations
v12_micro_stria_traj<-rmultinom(n = 224, size = 1 ,prob = c(.673, .327))
v12_micro_stria_traj<-t(v12_micro_stria_traj)
v12_micro_stria_traj[which(v12_micro_stria_traj[,1]==1),1]<-1
v12_micro_stria_traj[which(v12_micro_stria_traj[,2]==1),2]<-2
v12_micro_stria_traj<-rowSums(v12_micro_stria_traj)
v12_micro_stria_traj[v11_internal_micro_stria.abs]<-0
table(v12_micro_stria_traj)/length(v12_micro_stria_traj)

# Microstriation trajectory
v13_micro_stria_traj_shape<-rmultinom(n = 224, size = 1 ,prob = c(.828, .172))
v13_micro_stria_traj_shape<-t(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,1]==1),1]<-1
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,2]==1),2]<-2
v13_micro_stria_traj_shape<-rowSums(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape[v11_internal_micro_stria.abs]<-0
v13_micro_stria_traj_shape
table(v13_micro_stria_traj_shape)/length(v13_micro_stria_traj_shape)

# Location of microstriation
v14_micro_stria_traj_location<-rmultinom(n = 224, size = 1 ,prob = c(.028, .872, .1))
v14_micro_stria_traj_location<-t(v14_micro_stria_traj_location)
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,1]==1),1]<-1
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,2]==1),2]<-2
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,3]==1),3]<-3
v14_micro_stria_traj_location<-rowSums(v14_micro_stria_traj_location)
v14_micro_stria_traj_location[v11_internal_micro_stria.abs]<-0
v14_micro_stria_traj_location
table(v14_micro_stria_traj_location)/length(v14_micro_stria_traj_location)

# Length of the main groove
v15_main_groove_length<-rep("NA", length = 224)  

# Associated shallow striae 
v16_assoc_shallow_stria<-rmultinom(n = 224, size = 1 ,prob = c(.004, 0.996))
v16_assoc_shallow_stria<-t(v16_assoc_shallow_stria)
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,1]==1),1]<-0
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,2]==1),2]<-1
v16_assoc_shallow_stria<-rowSums(v16_assoc_shallow_stria)
v16_assoc_shallow_stria
table(v16_assoc_shallow_stria)/length(v16_assoc_shallow_stria)

# Associated tooth pits on mid-shafts
v17_assoc_tooth_pits<-rep("NA", length = 224)

trampling <- cbind(Class, v1_groove_traj, v2_barb, v3_orientation, 
                   v4_groove_shape, v5_groove_no, v6_groove_symmetry, 
                   v7_shoulder_effect, v8_flaking, v9_extent_of_flaking, 
                   v10_stria_overlapping, v11_internal_micro_stria, 
                   v12_micro_stria_traj, v13_micro_stria_traj_shape, 
                   v14_micro_stria_traj_location, v15_main_groove_length,
                   v16_assoc_shallow_stria, v17_assoc_tooth_pits)

###################################
####### Unretouched tools CM ######
###################################

Class <- as.data.frame(rep("unretouched", 246))
colnames(Class)<- "Class"

# Trajectory of the groove
v1_groove_traj<-rmultinom(n = 246, size = 1 ,prob = c(.935, .065, .0))
v1_groove_traj<-t(v1_groove_traj)
v1_groove_traj[which(v1_groove_traj[,1]==1),1]<-1
v1_groove_traj[which(v1_groove_traj[,2]==1),2]<-2
v1_groove_traj[which(v1_groove_traj[,3]==1),3]<-3
v1_groove_traj<-rowSums(v1_groove_traj)
v1_groove_traj
table(v1_groove_traj)/length(v1_groove_traj)

# Presence or absence of a barb
v2_barb<-rmultinom(n = 246, size = 1 ,prob = c(.102, .898))
v2_barb<-t(v2_barb)
v2_barb[which(v2_barb[,1]==1),1]<-1
v2_barb[which(v2_barb[,2]==1),2]<-0
v2_barb<-rowSums(v2_barb)
v2_barb
table(v2_barb)/length(v2_barb)

# Mark orientation 
v3_orientation<-rmultinom(n = 246, size = 1 ,prob = c(.4, .39, .606))
v3_orientation<-t(v3_orientation)
v3_orientation[which(v3_orientation[,1]==1),1]<-1
v3_orientation[which(v3_orientation[,2]==1),2]<-2
v3_orientation[which(v3_orientation[,3]==1),3]<-3
v3_orientation<-rowSums(v3_orientation)
v3_orientation
table(v3_orientation)/length(v3_orientation)

# Groove shape
v4_groove_shape<-rmultinom(n = 246, size = 1 ,prob = c(.967, .033))
v4_groove_shape<-t(v4_groove_shape)
v4_groove_shape[which(v4_groove_shape[,1]==1),1]<-1
v4_groove_shape[which(v4_groove_shape[,2]==1),2]<-2
v4_groove_shape<-rowSums(v4_groove_shape)
v4_groove_shape
table(v4_groove_shape)/length(v4_groove_shape)

# Number of conspicuous Grooves
v5_groove_no<-rep("NA", length = 246)  

# Symmetry of the groove
v6_groove_symmetry<-rmultinom(n = 246, size = 1 ,prob = c(.862, .138))
v6_groove_symmetry<-t(v6_groove_symmetry)
v6_groove_symmetry[which(v6_groove_symmetry[,1]==1),1]<-1
v6_groove_symmetry[which(v6_groove_symmetry[,2]==1),2]<-2
v6_groove_symmetry<-rowSums(v6_groove_symmetry)
v6_groove_symmetry
table(v6_groove_symmetry)/length(v6_groove_symmetry)

# Shoulder effect
v7_shoulder_effect<-rmultinom(n = 246, size = 1 ,prob = c(.329, .671))
v7_shoulder_effect<-t(v7_shoulder_effect)
v7_shoulder_effect[which(v7_shoulder_effect[,1]==1),1]<-1
v7_shoulder_effect[which(v7_shoulder_effect[,2]==1),2]<-0
v7_shoulder_effect<-rowSums(v7_shoulder_effect)
v7_shoulder_effect
table(v7_shoulder_effect)/length(v7_shoulder_effect)

# Presence of flaking 
v8_flaking<-rmultinom(n = 246, size = 1 ,prob = c(.146, .854))
v8_flaking<-t(v8_flaking)
v8_flaking[which(v8_flaking[,1]==1),1]<-1
v8_flaking[which(v8_flaking[,2]==1),2]<-0
v8_flaking<-rowSums(v8_flaking)
v8_flaking
table(v8_flaking)/length(v8_flaking)

# Extent of the flaking
v9_extent_of_flaking<-rmultinom(n = 246, size = 1 ,prob = c(.00, .146, .854))
v9_extent_of_flaking<-t(v9_extent_of_flaking)
v9_extent_of_flaking[which(v9_extent_of_flaking[,1]==1),1]<-1
v9_extent_of_flaking[which(v9_extent_of_flaking[,2]==1),2]<-2
v9_extent_of_flaking[which(v9_extent_of_flaking[,3]==1),3]<-0
v9_extent_of_flaking<-rowSums(v9_extent_of_flaking)
v9_extent_of_flaking
table(v9_extent_of_flaking)/length(v9_extent_of_flaking)

# Striae overlapping
v10_stria_overlapping<-rmultinom(n = 246, size = 1 ,prob = c(.129, .951))
v10_stria_overlapping<-t(v10_stria_overlapping)
v10_stria_overlapping[which(v10_stria_overlapping[,1]==1),1]<-1
v10_stria_overlapping[which(v10_stria_overlapping[,2]==1),2]<-0
v10_stria_overlapping<-rowSums(v10_stria_overlapping)
v10_stria_overlapping
table(v10_stria_overlapping)/length(v10_stria_overlapping)

# Internal microstriations
v11_internal_micro_stria<-rmultinom(n = 246, size = 1 ,prob = c(.772, .228))
v11_internal_micro_stria<-t(v11_internal_micro_stria)
v11_internal_micro_stria[which(v11_internal_micro_stria[,1]==1),1]<-1
v11_internal_micro_stria[which(v11_internal_micro_stria[,2]==1),2]<-0
v11_internal_micro_stria<-rowSums(v11_internal_micro_stria)
v11_internal_micro_stria
table(v11_internal_micro_stria)/length(v11_internal_micro_stria)
v11_internal_micro_stria.abs<-which(v11_internal_micro_stria==0)

# Internal microstriations
v12_micro_stria_traj<-rmultinom(n = 246, size = 1 ,prob = c(1, 0))
v12_micro_stria_traj<-t(v12_micro_stria_traj)
v12_micro_stria_traj[which(v12_micro_stria_traj[,1]==1),1]<-1
v12_micro_stria_traj[which(v12_micro_stria_traj[,2]==1),2]<-2
v12_micro_stria_traj<-rowSums(v12_micro_stria_traj)
v12_micro_stria_traj[v11_internal_micro_stria.abs]<-0
v12_micro_stria_traj
table(v12_micro_stria_traj)/length(v12_micro_stria_traj)

# Microstriation trajectory
v13_micro_stria_traj_shape<-rmultinom(n = 246, size = 1 ,prob = c(1, 0))
v13_micro_stria_traj_shape<-t(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,1]==1),1]<-1
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,2]==1),2]<-2
v13_micro_stria_traj_shape<-rowSums(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape[v11_internal_micro_stria.abs]<-0
v13_micro_stria_traj_shape
table(v13_micro_stria_traj_shape)/length(v13_micro_stria_traj_shape)

# Location of microstriation
v14_micro_stria_traj_location<-rmultinom(n = 246, size = 1, prob = c(.732, 0, .041))
v14_micro_stria_traj_location<-t(v14_micro_stria_traj_location)
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,1]==1),1]<-1
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,2]==1),2]<-2
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,3]==1),3]<-3
v14_micro_stria_traj_location<-rowSums(v14_micro_stria_traj_location)
v14_micro_stria_traj_location
v14_micro_stria_traj_location[v11_internal_micro_stria.abs]<-0
table(v14_micro_stria_traj_location)/length(v14_micro_stria_traj_location)

# Length of the main groove
v15_main_groove_length<-rep("NA", length =246)

# Associated shallow striae 
v16_assoc_shallow_stria<-rmultinom(n = 246, size = 1 ,prob = c(.976, 0.024))
v16_assoc_shallow_stria<-t(v16_assoc_shallow_stria)
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,1]==1),1]<-0
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,2]==1),2]<-1
v16_assoc_shallow_stria<-rowSums(v16_assoc_shallow_stria)
v16_assoc_shallow_stria
table(v16_assoc_shallow_stria)/length(v16_assoc_shallow_stria)

# Associated tooth pits on mid-shafts
v17_assoc_tooth_pits<-rep("NA", length = 246)

unretouched <- cbind(Class, v1_groove_traj, v2_barb, v3_orientation, 
                     v4_groove_shape, v5_groove_no, v6_groove_symmetry, 
                     v7_shoulder_effect,v8_flaking, v9_extent_of_flaking, 
                     v10_stria_overlapping, v11_internal_micro_stria, 
                     v12_micro_stria_traj, v13_micro_stria_traj_shape, 
                     v14_micro_stria_traj_location, v15_main_groove_length,
                     v16_assoc_shallow_stria, v17_assoc_tooth_pits)

#################################
####### Retouched tools CM ######
#################################

Class <- as.data.frame(rep("retouched", 105))
colnames(Class)<- "Class"

# Trajectory of the groove
v1_groove_traj<-rmultinom(n = 105, size = 1 ,prob = c(.971, .0, .029))
v1_groove_traj<-t(v1_groove_traj)
v1_groove_traj[which(v1_groove_traj[,1]==1),1]<-1
v1_groove_traj[which(v1_groove_traj[,2]==1),2]<-2
v1_groove_traj[which(v1_groove_traj[,3]==1),3]<-3
v1_groove_traj<-rowSums(v1_groove_traj)
v1_groove_traj
table(v1_groove_traj)/length(v1_groove_traj)

# Presence or absence of a barb
v2_barb<-rmultinom(n = 105, size = 1 ,prob = c(.057, .943))
v2_barb<-t(v2_barb)
v2_barb[which(v2_barb[,1]==1),1]<-1
v2_barb[which(v2_barb[,2]==1),2]<-0
v2_barb<-rowSums(v2_barb)
v2_barb
table(v2_barb)/length(v2_barb)

# Mark orientation 
v3_orientation<-rmultinom(n = 105, size = 1 ,prob = c(.0, .029, .971))
v3_orientation<-t(v3_orientation)
v3_orientation[which(v3_orientation[,1]==1),1]<-1
v3_orientation[which(v3_orientation[,2]==1),2]<-2
v3_orientation[which(v3_orientation[,3]==1),3]<-3
v3_orientation<-rowSums(v3_orientation)
v3_orientation
table(v3_orientation)/length(v3_orientation)

# Groove shape
v4_groove_shape<-rmultinom(n = 105, size = 1 ,prob = c(.057, .943))
v4_groove_shape<-t(v4_groove_shape)
v4_groove_shape[which(v4_groove_shape[,1]==1),1]<-1
v4_groove_shape[which(v4_groove_shape[,2]==1),2]<-2
v4_groove_shape<-rowSums(v4_groove_shape)
v4_groove_shape
table(v4_groove_shape)/length(v4_groove_shape)

# Number of conspicuous Grooves
v5_groove_no<-rep("NA", length = 105)  

# Symmetry of the grooveetry
v6_groove_symmetry<-rmultinom(n = 105, size = 1 ,prob = c(.40, .60))
v6_groove_symmetry<-t(v6_groove_symmetry)
v6_groove_symmetry[which(v6_groove_symmetry[,1]==1),1]<-1
v6_groove_symmetry[which(v6_groove_symmetry[,2]==1),2]<-2
v6_groove_symmetry<-rowSums(v6_groove_symmetry)
v6_groove_symmetry
table(v6_groove_symmetry)/length(v6_groove_symmetry)

# Shoulder effect
v7_shoulder_effect<-rmultinom(n = 105, size = 1 ,prob = c(.743, .257))
v7_shoulder_effect<-t(v7_shoulder_effect)
v7_shoulder_effect[which(v7_shoulder_effect[,1]==1),1]<-1
v7_shoulder_effect[which(v7_shoulder_effect[,2]==1),2]<-0
v7_shoulder_effect<-rowSums(v7_shoulder_effect)
v7_shoulder_effect
table(v7_shoulder_effect)/length(v7_shoulder_effect)

# Presence of flaking 
v8_flaking<-rmultinom(n = 105, size = 1 ,prob = c(.514, .486))
v8_flaking<-t(v8_flaking)
v8_flaking[which(v8_flaking[,1]==1),1]<-1
v8_flaking[which(v8_flaking[,2]==1),2]<-0
v8_flaking<-rowSums(v8_flaking)
v8_flaking
table(v8_flaking)/length(v8_flaking)

# Extent of the flaking
v9_extent_of_flaking<-rmultinom(n = 105, size = 1 ,prob = c(.114, .40, .486))
v9_extent_of_flaking<-t(v9_extent_of_flaking)
v9_extent_of_flaking[which(v9_extent_of_flaking[,1]==1),1]<-1
v9_extent_of_flaking[which(v9_extent_of_flaking[,2]==1),2]<-2
v9_extent_of_flaking[which(v9_extent_of_flaking[,3]==1),3]<-0
v9_extent_of_flaking<-rowSums(v9_extent_of_flaking)
v9_extent_of_flaking
table(v9_extent_of_flaking)/length(v9_extent_of_flaking)

# Striae overlapping
v10_stria_overlapping<-rmultinom(n = 105, size = 1 ,prob = c(0, 1.0))
v10_stria_overlapping<-t(v10_stria_overlapping)
v10_stria_overlapping[which(v10_stria_overlapping[,1]==1),1]<-1
v10_stria_overlapping[which(v10_stria_overlapping[,2]==1),2]<-0
v10_stria_overlapping<-rowSums(v10_stria_overlapping)
v10_stria_overlapping
table(v10_stria_overlapping)/length(v10_stria_overlapping)

# Internal microstriations
v11_internal_micro_stria<-rmultinom(n = 105, size = 1 ,prob = c(1.0, .0))
v11_internal_micro_stria<-t(v11_internal_micro_stria)
v11_internal_micro_stria[which(v11_internal_micro_stria[,1]==1),1]<-1
v11_internal_micro_stria[which(v11_internal_micro_stria[,2]==1),2]<-0
v11_internal_micro_stria<-rowSums(v11_internal_micro_stria)
v11_internal_micro_stria
table(v11_internal_micro_stria)/length(v11_internal_micro_stria)

# Internal microstriations
v12_micro_stria_traj <-rmultinom(n = 105, size = 1 ,prob = c(1.0, .0))
v12_micro_stria_traj<-t(v12_micro_stria_traj)
v12_micro_stria_traj[which(v12_micro_stria_traj[,1]==1),1]<-1
v12_micro_stria_traj[which(v12_micro_stria_traj[,2]==1),2]<-2
v12_micro_stria_traj<-rowSums(v12_micro_stria_traj)
v12_micro_stria_traj
table(v12_micro_stria_traj)/length(v12_micro_stria_traj)

# Microstriation trajectory
v13_micro_stria_traj_shape<-rmultinom(n = 105, size = 1 ,prob = c(1.0, .0))
v13_micro_stria_traj_shape<-t(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,1]==1),1]<-1
v13_micro_stria_traj_shape[which(v13_micro_stria_traj_shape[,2]==1),2]<-2
v13_micro_stria_traj_shape<-rowSums(v13_micro_stria_traj_shape)
v13_micro_stria_traj_shape
table(v13_micro_stria_traj_shape)/length(v13_micro_stria_traj_shape)

# Location of microstriation
v14_micro_stria_traj_location<-rmultinom(n = 105, size = 1 ,prob = c(.029, .886, .086))
v14_micro_stria_traj_location<-t(v14_micro_stria_traj_location)
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,1]==1),1]<-1
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,2]==1),2]<-2
v14_micro_stria_traj_location[which(v14_micro_stria_traj_location[,3]==1),3]<-3
v14_micro_stria_traj_location<-rowSums(v14_micro_stria_traj_location)
v14_micro_stria_traj_location
table(v14_micro_stria_traj_location)/length(v14_micro_stria_traj_location)

# Length of the main groove
v15_main_groove_length<-rep("NA", length = 105)

# Associated shallow striae 
v16_assoc_shallow_stria<-rmultinom(n = 105, size = 1 ,prob = c(1.0, .0))
v16_assoc_shallow_stria<-t(v16_assoc_shallow_stria)
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,1]==1),1]<-0
v16_assoc_shallow_stria[which(v16_assoc_shallow_stria[,2]==1),2]<-1
v16_assoc_shallow_stria<-rowSums(v16_assoc_shallow_stria)
v16_assoc_shallow_stria
table(v16_assoc_shallow_stria)/length(v16_assoc_shallow_stria)

# Associated tooth pits on mid-shafts
v17_assoc_tooth_pits<-rep("NA", length = 105)

retouched <- cbind(Class, v1_groove_traj, v2_barb, v3_orientation, 
                   v4_groove_shape, v5_groove_no, v6_groove_symmetry, 
                   v7_shoulder_effect, v8_flaking, v9_extent_of_flaking, 
                   v10_stria_overlapping, v11_internal_micro_stria, 
                   v12_micro_stria_traj, v13_micro_stria_traj_shape, 
                   v14_micro_stria_traj_location, v15_main_groove_length, 
                   v16_assoc_shallow_stria, v17_assoc_tooth_pits)

########################
#### Generated Data ####
########################

gen.data <- rbind(trampling, unretouched, retouched)
