//
//  AKCombFilterAudioUnit.h
//  AudioKit
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright (c) 2016 Aurelius Prochazka. All rights reserved.
//

#ifndef AKCombFilterAudioUnit_h
#define AKCombFilterAudioUnit_h

#import <AudioToolbox/AudioToolbox.h>

@interface AKCombFilterAudioUnit : AUAudioUnit
- (void)start;
- (void)stop;
- (BOOL)isPlaying;
@end

#endif /* AKCombFilterAudioUnit_h */