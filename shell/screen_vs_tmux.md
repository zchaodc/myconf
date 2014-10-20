# screen and tmux

A comparison of the features (or more-so just a table of notes for accessing some of those features) for GNU screen and BSD-licensed tmux.

This document released for use under the PPL license available at http://code.dayid.org/ppl/ppl.txt

Want more information about tmux and screen? Check out This page also

The formatting here is simple enough to understand (I would hope). ^ means ctrl+, so ^x is ctrl+x. M- means meta (generally left-alt or escape)+, so M-x is left-alt+x

It should be noted that this is no where near a full feature-set of either group. This - being a cheat-sheet - is just to point out the most very basic features to get you on the road.

Action                                  tmux                screen
start a new session	                    tmux OR
                                        tmux new OR
                                        tmux new-session	  screen
re-attach a detached session	          tmux attach OR
                                        tmux attach-session	screen -r
re-attach an attached session (detaching it from elsewhere)	
                                        tmux attach -d OR
                                        tmux attach-session -d	screen -dr
re-attach an attached session (keeping it attached elsewhere)	
                                        tmux attach OR
                                        tmux attach-session	screen -x
detach from currently attached session	^b d OR
                                        ^b :detach	^a ^d OR
                                        ^a :detach
rename-window to newname	              ^b , <newname> OR
                                        ^b :rename-window <newname>	^a A <newname>
list windows	                          ^b w	^a w
list windows in chooseable menu		      ^a "
go to window #	                        ^b #	^a #
go to last-active window	              ^b l	^a ^a
go to next window	                      ^b n	^a n
go to previous window	                  ^b p	^a p
see keybindings	                        ^b ?	^a ?
list sessions	                          ^b s OR
                                        tmux ls OR
                                        tmux list-sessions	screen -ls
toggle visual bell		                  ^a ^g
create another shell	                  ^b c	^a c
exit current shell	                    ^d	^d
split pane horizontally	                ^b "	
split pane vertically	                  ^b %	
switch to another pane	                ^b o	
kill the current pane	                  ^b x OR (logout/^D)	
close other panes except the current one	^b !	
swap location of panes	                ^b ^o	
show time	                              ^b t	
show numeric values of panes	          ^b q	
