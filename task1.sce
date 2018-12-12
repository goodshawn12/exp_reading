# SDL header part

scenario = "exp1_vocabulary";

active_buttons = 1;
button_codes = 1;

default_font_size = 24;
default_text_color = 200, 200, 200;

begin;

##########
# SDL part

picture {} default;

# words from SSAT lower level
array {
	TEMPLATE "template_task1.tem" {
		question			opt1 			opt2 			opt3 			opt4 			opt5 				word_code ;
		"cold" 			"kind" 		"sick"		"chilly"		"light"		"hot" 			"easy_1";
		"cooperate"		"join" 		"help" 		"delay"		"finish"		"substitute" 	"easy_2";
	};
} task1_stim_easy; 

# words from SSAT upper level
array {
	TEMPLATE "template_task1.tem" {
		question			opt1 						opt2 						opt3 				opt4 			opt5 				word_code;
		"integrate" 	"bring togther" 		"settle accounts"		"press on"		"create"		"argue" 			"med_1";
		"predicament"	"forecast"		 		"plight" 				"sorrow"			"regret"		"dominance" 	"med_2";
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
      caption = "How confident you are in \nknowing the meaning of this word?";
		font_size = 12;
   };
   x = 0; y =0;
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


begin_pcl;

# PCL part

# append all stimuli
array<picture> task1_stim_all [0];
task1_stim_all.append( task1_stim_easy );
task1_stim_all.append( task1_stim_medium );

# shuffle the word array before running the loop
task1_stim_all.shuffle();

loop 
   int trialID = 1
until
   trialID > task1_stim_all.count()
begin
   event1.set_stimulus( task1_stim_all[trialID] );
	# event1.set_event_code( task1_stim_all[trialID].description() );
   exp1_main_trial.present();
   
   trialID = trialID + 1
end
