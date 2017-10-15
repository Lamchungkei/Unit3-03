# Created by: Kay Lin
# Created on: 12th-Oct-2017
# Created for: ICS3U
# This program shows ROCK_PAPER_SCISSOR Game

import ui

from numpy import random

# random number to guess
comp = random.randint(1, 3)

#constants

ROCK = 1
SCISSORS = 2
PAPER = 3

def rock_touch_up_inside(sender):
    view['choice_label'].text = 'Select rock'
    
    if comp == 1:
       view['answer_label'].text = 'Draw'

    elif comp == 2:
         view['answer_label'].text = 'Human wins'

    elif comp == 3:
         view['answer_label'].text = 'Comp wins'
    
def paper_touch_up_inside(sender):
    view['choice_label'].text = 'Select paper'
    
    if comp == 1:
       view['answer_label'].text = 'Human wins'

    elif comp == 2:
         view['answer_label'].text = 'Comp wins'

    elif comp == 3:
         view['answer_label'].text = 'Draw'
    
def scissors_touch_up_inside(sender):
    view['choice_label'].text = 'Select scissors'
    
    if comp == 1:
       view['answer_label'].text = 'Comp wins'

    elif comp == 2:
         view['answer_label'].text = 'Draw'

    elif comp == 3:
         view['answer_label'].text = 'Human wins'
    
view = ui.load_view()
view.present('full_screen')
