//
//  LineSDKAPIInterfaceTests.m
//
//  Copyright (c) 2016-present, LINE Corporation. All rights reserved.
//
//  You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
//  copy and distribute this software in source code or binary form for use
//  in connection with the web services and APIs provided by LINE Corporation.
//
//  As with any software that integrates with the LINE Corporation platform, your use of this software
//  is subject to the LINE Developers Agreement [http://terms2.line.me/LINE_Developers_Agreement].
//  This copyright notice shall be included in all copies or substantial portions of the software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//  DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

// Tests in this file should only compile but not run, since it will send an actual request.

#import <XCTest/XCTest.h>
@import LineSDKObjC;

@interface LineSDKAPIInterfaceTests : XCTestCase

@end

@implementation LineSDKAPIInterfaceTests

- (void)_testRefreshAccessTokenInterface {
    [LineSDKAPI refreshAccessTokenWithCompletionHandler:^(LineSDKAccessToken * token, NSError * error) {}];
    [LineSDKAPI refreshAccessToken:nil
                 completionHandler:^(LineSDKAccessToken * token, NSError * error) {}];
    [LineSDKAPI refreshAccessToken:nil
                     callbackQueue:[LineSDKCallbackQueue asyncMain]
                 completionHandler:^(LineSDKAccessToken * token, NSError * error) {}];
}

- (void)_testRevokeAccessTokenInterface {
    [LineSDKAPI revokeAccessTokenWithCompletionHandler:^(NSError * error) {}];
    [LineSDKAPI revokeAccessToken:nil
                completionHandler:^(NSError * error) {}];
    [LineSDKAPI revokeAccessToken:nil
                    callbackQueue:[LineSDKCallbackQueue asyncMain]
                completionHandler:^(NSError * error) {}];
}

- (void)_testVerifyAccessTokenInterface {
    [LineSDKAPI verifyAccessTokenWithCompletionHandler:^(LineSDKAccessTokenVerifyResult *result, NSError * error) {}];
    [LineSDKAPI verifyAccessToken:nil
                completionHandler:^(LineSDKAccessTokenVerifyResult *result, NSError * error) {}];
    [LineSDKAPI verifyAccessToken:nil
                    callbackQueue:[LineSDKCallbackQueue asyncMain]
                completionHandler:^(LineSDKAccessTokenVerifyResult *result, NSError * error) {}];
}

- (void)_testGetProfileInterface {
    [LineSDKAPI getProfileWithCompletionHandler:^(LineSDKUserProfile *result, NSError * error) {}];
    [LineSDKAPI getProfileWithCallbackQueue:[LineSDKCallbackQueue asyncMain]
                          completionHandler:^(LineSDKUserProfile *result, NSError * error) {}];
}

- (void)_testGetFriendsInterfale {
    [LineSDKAPI getFriendsWithPageToken:nil
                      completionHandler:^(LineSDKGetFriendsResponse *result, NSError *error) {}];
    [LineSDKAPI getFriendsWithSort:LineSDKGetFriendsRequestSortName
                         pageToken:nil
                 completionHandler:^(LineSDKGetFriendsResponse *result, NSError *error) {}];
    [LineSDKAPI getFriendsWithSort:LineSDKGetFriendsRequestSortName
                         pageToken:nil
                     callbackQueue:[LineSDKCallbackQueue asyncMain]
                 completionHandler:^(LineSDKGetFriendsResponse *result, NSError *error) {}];
}

- (void)_testGetApproversInFriendsInterface {
    [LineSDKAPI getApproversInFriendsWithPageToken:nil
                                 completionHandler:^(LineSDKGetApproversInFriendsResponse *result, NSError *error) {}];
    [LineSDKAPI getApproversInFriendsWithPageToken:nil
                                     callbackQueue:[LineSDKCallbackQueue asyncMain]
                                 completionHandler:^(LineSDKGetApproversInFriendsResponse *result, NSError *error) {}];
}

- (void)_testGetGroupsInterface {
    [LineSDKAPI getGroupsWithPageToken:nil
                      completionHandler:^(LineSDKGetGroupsResponse *result, NSError *error) {}];
    [LineSDKAPI getGroupsWithPageToken:nil
                         callbackQueue:[LineSDKCallbackQueue asyncMain]
                     completionHandler:^(LineSDKGetGroupsResponse *result, NSError *error) {}];
}

- (void)_testGetApproversInGroupInterface {
    [LineSDKAPI getApproversInGroupWithGroupID:@""
                                     pageToken:nil
                             completionHandler:^(LineSDKGetApproversInGroupResponse *result, NSError * error) {}];
    [LineSDKAPI getApproversInGroupWithGroupID:@""
                                     pageToken:nil
                                 callbackQueue:[LineSDKCallbackQueue asyncMain]
                             completionHandler:^(LineSDKGetApproversInGroupResponse *result, NSError * error) {}];
}

@end
