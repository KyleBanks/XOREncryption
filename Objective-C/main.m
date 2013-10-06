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
    char key[] = {'K', 'C', 'Q'};
    NSMutableString *output = [[NSMutableString alloc] init];
    
    for(int i = 0; i < input.length; i++) {
        char c = [input characterAtIndex:i];
        c ^= key[i % sizeof(key)/sizeof(char)];
        [output appendString:[NSString stringWithFormat:@"%c", c]];
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

