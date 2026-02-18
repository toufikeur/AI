% ----------------------------------
% Simple ELIZA Knowledge Base
% ----------------------------------

% Facts: keywords and responses
response(hello, 'Hello! How are you feeling today?').
response(hi, 'Hi there! How can I help you today?').
response(sad, 'I am sorry to hear you are sad. Why do you feel sad?').
response(happy, 'That is great! What makes you happy?').
response(stressed, 'Stress is tough. Can you tell me more about it?').
response(anxious, 'Anxiety can be difficult. Do you want to talk about it?').
response(name, 'I am ELIZA, your friendly chatbot. What is your name?').
response(help, 'I am here to help you. Tell me more about your problem.').
response(_, 'Tell me more about that.').

% ----------------------------------
% Main ELIZA Loop
% ----------------------------------

eliza :-
    write('ELIZA: Hello! I am ELIZA. Type bye. to exit.'), nl,
    chat_loop.

chat_loop :-
    write('You: '),
    read(Input),         % Read user input as a Prolog atom
    process(Input),
    Input \= bye,        % Stop if user types bye.
    chat_loop.

% Process input and respond
process(Input) :-
    response(Input, Reply),     % Check if input matches a keyword
    write('ELIZA: '), write(Reply), nl.
