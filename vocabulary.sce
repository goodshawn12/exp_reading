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

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "cold"  ;    
      "cooperate"  ;
      "sleepy"  ;
      "difficult"  ;
      "frantic"  ;
      "brief"  ;
      "admire"  ;
      "unusual"  ;
      "edit"  ;
      "betray"  ;
   };
} vocabulary_ssat_lower;    

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "collegue"  ;    
      "accommodate"  ;
      "sentimental"  ;
      "compassionate"  ;
      "meek"  ;
      "engaging"  ;
      "courteous"  ;
      "dejected"  ;
      "headstrong"  ;
      "exasperate"  ;
   };
} vocabulary_ssat_middle; 

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "integrate"  ;    
      "predicament"  ;
      "rendevous"  ;
      "eulogize"  ;
      "peccadillo"  ;
      "titanic"  ;
      "rambunctious"  ;
      "disdain"  ;
      "invigorate"  ;
      "hamper"  ;
   };
} vocabulary_ssat_upper; 

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "accost"  ;    
      "boorish"  ;
      "cajole"  ;
      "caustic"  ;
      "decimate"  ;
      "torpor"  ;
      "estrange"  ;
      "malleable"  ;
      "mercurial"  ;
      "recluse"  ;
   };
} vocabulary_sat; 

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "abstain"  ;    
      "audacious"  ;
      "blight"  ;
      "cacophony"  ;
      "confound"  ;
      "ephemeral"  ;
      "inert"  ;
      "plethora"  ;
      "vilify"  ;
      "winsome"  ;
   };
} vocabulary_gre_lower;

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "abate"  ;    
      "acerbic"  ;
      "canonical"  ;
      "demur"  ;
      "dictim"  ;
      "effigy"  ;
      "fetid"  ;
      "imbue"  ;
      "opine"  ;
      "tout"  ;
   };
} vocabulary_gre_middle;

array {
   TEMPLATE "template_word.tem" {
      cap   ;
      "abeyance"  ;    
      "compendium"  ;
      "egress"  ;
      "fracas"  ;
      "iconoclast"  ;
      "lambaste"  ;
      "neophyte"  ;
      "polemic"  ;
      "umbrage"  ;
      "winnow"  ;
   };
} vocabulary_gre_upper;   

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
      caption = "How confident are you in your answer? \n \n \n 1 \t \t \t \t \t \t \t 2 \t \t \t \t \t \t \t 3 \t \t \t \t \t \t \t  4 \t \t \t \t \t \t \t 5 \n (not confident)\t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t \t(very confident)";
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
   int difficulty = int( random( 1, 7 ) );
   if difficulty == 1 then
      int pic = random( 1, vocabulary_ssat_lower.count() );
      event1.set_stimulus( vocabulary_ssat_lower[pic] );
      event1.set_event_code( "ssat lower" + string( pic ) );
   else if difficulty == 2 then                 
      int pic = random( 1, vocabulary_ssat_middle.count() );
      event1.set_stimulus( vocabulary_ssat_middle[pic] );
      event1.set_event_code( "ssat middle" + string( pic ) );
	else if difficulty == 3 then
		int pic = random( 1, vocabulary_ssat_upper.count() );
      event1.set_stimulus( vocabulary_ssat_upper[pic] );
      event1.set_event_code( "ssat upper" + string( pic ) );
	else if difficulty == 4 then
		int pic = random( 1, vocabulary_sat.count() );
      event1.set_stimulus( vocabulary_sat[pic] );
      event1.set_event_code( "sat" + string( pic ) );
	else if difficulty == 5 then
		int pic = random( 1, vocabulary_gre_lower.count() );
      event1.set_stimulus( vocabulary_gre_lower[pic] );
      event1.set_event_code( "gre lower" + string( pic ) );
	else if difficulty == 6 then
		int pic = random( 1, vocabulary_gre_middle.count() );
      event1.set_stimulus( vocabulary_gre_middle[pic] );
      event1.set_event_code( "gre middle" + string( pic ) );
	else
		int pic = random( 1, vocabulary_gre_upper.count() );
      event1.set_stimulus( vocabulary_gre_upper[pic] );
      event1.set_event_code( "gre upper" + string( pic ) );
   end;
   exp1_main_trial.present();
   
   nTrial = nTrial + 1
end
end
end
end
end
end
