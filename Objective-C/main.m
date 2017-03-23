//
//  main.m
//  XOREncryption
//
//  Created by Kyle Banks on 2013-10-06.
//

#import <Foundation/Foundation.h>

@interface XOREncryption : NSObject
+(NSString *) encryptDecrypt:(NSString *)input;
@end

@implementation XOREncryption

+(NSString *) encryptDecrypt:(NSString *)input {
    unichar key[] = {'K', 'C', 'Q'}; //Can be any chars, and any size array
    NSMutableString *output = [[NSMutableString alloc] init];
    
    for(int i = 0; i < input.length; i++) {
        unichar c = [input characterAtIndex:i];
        c ^= key[i % (sizeof(key)/sizeof(unichar))];
        [output appendString:[NSString stringWithFormat:@"%C", c]];
    }
    
    return output;
}

@end



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *encrypted = [XOREncryption encryptDecrypt:@"kylewbanks.com"];
        NSLog(@"Encrypted:%@", encrypted);
        
        NSString *decrypted = [XOREncryption encryptDecrypt:encrypted];
        NSLog(@"Decrypted:%@", decrypted);
    }
    return 0;
}

