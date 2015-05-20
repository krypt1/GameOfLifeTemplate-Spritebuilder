//
//  Creature.m
//  GameOfLife
//
//  Created by Frank on 19/05/2015.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

//since we mad creature inherit from CCSprite, 'super' below refers to CCSprite

-(instancetype)initCreature
{
self = [super initWithImageNamed:@"GameOfLife/Assets/bubble.png"];

if (self) {
    self.isAlive = NO;
}

return self;
    
}

-(void)setIsAlive:(BOOL)newState{
    //when you create @property as we did in the .h an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    //'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property
    self.visible = _isAlive;

}



@end
