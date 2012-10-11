//
//  OCSNoteProperty.m
//  OCS iPad Examples
//
//  Created by Aurelius Prochazka on 9/22/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSNoteProperty.h"
#import "OCSNote.h"

@interface OCSNoteProperty() {
    OCSNote *myNote;
    int pValue;
}
@end

@implementation OCSNoteProperty

@synthesize pValue;
@synthesize note=myNote;

- (id) initWithNote:(OCSNote *)note
       initialValue:(float)initialValue
           minValue:(float)minValue
           maxValue:(float)maxValue
{
    self = [super initWithValue:initialValue minValue:minValue maxValue:maxValue];
    if (self) {
        myNote = note;
        pValue = 0;
    }
    return self;
}

- (void)setValue:(Float32)value {
    currentValue = value;
    if (minimumValue && value < minimumValue) {
        currentValue = minimumValue;
        NSLog(@"%@ out of bounds, assigning to minimum", self);
    }
    if (maximumValue && value > maximumValue) {
        currentValue = maximumValue;
        NSLog(@"%@ out of bounds, assigning to maximum", self);
    }
    [myNote updateProperties];
}


- (NSString *)description {
    if (currentValue) {
        return [super description];
    } else {
        return [NSString stringWithFormat:@"p%i", pValue];
    }
}

@end
