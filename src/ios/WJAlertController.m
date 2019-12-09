/********* WJAlertController.m Cordova Plugin Implementation *******/

#import "WJAlertController.h"
#import <Cordova/CDV.h>


@implementation WJAlertController

- (void)alerMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (command.arguments.count > 1) {
        NSString* message = [command.arguments objectAtIndex:1];
        UIAlertController *alertC = [UIAlertController alertControllerWithTitle:echo message:message preferredStyle:(UIAlertControllerStyleAlert)];
        UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
             }];
        [alertC addAction:alertA];
        [self.viewController presentViewController:alertC animated:YES completion:nil];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
