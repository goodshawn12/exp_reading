# SDL header part

scenario = "exp1_vocabulary";

active_buttons = 6;
button_codes = 1,2,3,4,5,6; # Make sure 1-5 are the right numbers in Response Panel for confidence level

default_font_size = 24;
default_text_color = 200, 200, 200;

begin;

##########
# SDL part

picture {} default;

# words from SSAT lower level
array {
	TEMPLATE "template_task1.tem" {
		question			opt1 				opt2 				opt3 				opt4 				opt5 				word_code ;
		"cold" 			"(1) kind" 		"(2) sick"		"(3) chilly"	"(4) light"		"(5) hot" 			"easy_1";
		"cooperate"		"(1) join" 		"(2) help" 		"(3) delay"		"(4) finish"	"(5) substitute" 	"easy_2";
	};
} task1_stim_easy; 

# words from SSAT upper level
array {
	TEMPLATE "template_task1.tem" {
		question			opt1 						opt2 							opt3 					opt4 				opt5 				word_code;
		"integrate" 	"(1) bring togther" 	"(2)settle accounts"		"(3) press on"		"(4) create"	"(5) argue" 			"med_1";
		"predicament"	"(1) forecast"		 	"(2)plight" 				"(3) sorrow"		"(4) regret"	"(5) dominance" 	"med_2";
	};
} task1_stim_medium; 

# Introductory slides
picture {
   text {
      caption = "Experiment I:\nVocabulary Flashcard";
      font_size = 36;
   };
   x = 0; y =0;
   text {
      caption = "(Press response button to continue)";
   };
   x = 0; y = -200;
} exp1;

picture {
   text {
      caption = "Rest for 1 min with eyes open";
   };
   x = 0; y =0;
} rest1;

picture {
   text {
      caption = "Press response button to start the experiment";
		font_size = 12;
   };
   x = 0; y =0;
} start;

picture {
   text {
      caption = "Break Time!";
   };
   x = 0; y =0;
	text {
      caption = "(Press response button to continue)";
		font_size = 12;
   };
   x = 0; y = -100;
} break;

# Stimuli for each trial
picture {
	text {
		caption = "+";
		font_size = 48;
	};
	x = 0; y =0;
} cross;

picture {
   text {
      caption = "How confident are you in your answer?";
		font_size = 12;
   };
   x = 0; y =0;
   text {
      caption = "1 \t \t \t \t \t \t \t 2 \t \t \t \t \t \t \t 3 \t \t \t \t \t \t \t  4 \t \t \t \t \t \t \t 5 \n (not confident)\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t(very confident)";
		font_size = 12;
   };
	x = 0; y =-100;
} question_1;

# Introductory trial
trial {
   trial_type = first_response;
   trial_duration = forever;
   
   picture exp1;
   code = "exp1";
};

# Rest
trial {
	trial_duration = 2000; 	# msec
	
	stimulus_event {
		picture rest1;
		code = "rest1";
	} event_rest;
};

# Start experiment
trial {
	trial_type = first_response;
	trial_duration = forever;
	
	picture start;
	code = "start";
};

# Task 1: present words and collect responses
trial {
	trial_type = first_response;
	trial_duration = forever;
	
	# Cross 
	picture cross;
	time = 0;
	duration = 800;
   code = "cross";

	# Word
   stimulus_event {
      nothing {};
		time = 1000;
		duration = 2000;
   } event1;

	# Response
	picture question_1;
	time = 3500;
	code = "end_trial";
	
} exp1_main_trial;

# Break
trial {
	trial_type = first_response;
   trial_duration = forever;
	
	picture break;
   code = "break";
} exp_break;

begin_pcl;

# PCL part
int num_trial_per_block = 2;
int num_block = 2;

# append all stimuli
array<picture> task1_stim_all [0];
task1_stim_all.append( task1_stim_easy );
task1_stim_all.append( task1_stim_medium );

# shuffle the word array before running the loop
task1_stim_all.shuffle();

loop int blockID = 1 until blockID > num_block
begin
	loop int trialID = 1 until trialID > num_trial_per_block  # task1_stim_all.count()
	begin
		event1.set_stimulus( task1_stim_all[ (blockID-1)*num_block + trialID ] );
		# event1.set_event_code( task1_stim_all[trialID].description() );
		exp1_main_trial.present();
		
		trialID = trialID + 1;
	end;
	
	if (blockID != num_block) then
		exp_break.present();
	end;
	
	blockID = blockID + 1;
end;