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

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "easy"  ;    
      "test"  ;
      "come"  ;
      "go"  ;
      "sit"  ;
   };
} vocabulary_easy;    

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "acquiesce"  ;    
      "flabbergasted"  ;
      "extol"  ;
      "brusque"  ;
      "brazen"  ;
   };
} vocabulary_difficult;   

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
		caption = "+";
		font_size = 48;
	};
	x = 0; y =0;
} cross;

picture {
   text {
      caption = "How confident you are in \nknowing the meaning of the word?";
		font_size = 12;
   };
   x = 0; y =0;
} question_1;

trial {
   trial_type = first_response;
   trial_duration = forever;
   
   picture exp1;
   code = "exp1";
};


trial {
	trial_duration = 2000; 	# msec
	
	stimulus_event {
		picture rest1;
		code = "rest1";
	} event_rest;
};

trial {
	trial_type = first_response;
	trial_duration = forever;
	
	picture start;
	code = "start";
};

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

loop
   int nTrial = 1
until
   nTrial > 10
begin
   bool difficulty = bool( random( 0, 1 ) );
   if difficulty then
      int pic = random( 1, vocabulary_easy.count() );
      event1.set_stimulus( vocabulary_easy[pic] );
      event1.set_event_code( "easy " + string( pic ) );
   else                  
      int pic = random( 1, vocabulary_difficult.count() );
      event1.set_stimulus( vocabulary_difficult[pic] );
      event1.set_event_code( "difficult " + string( pic ) );  
   end;
   exp1_main_trial.present();
   
   nTrial = nTrial + 1
end
