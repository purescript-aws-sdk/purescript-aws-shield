
module AWS.Shield.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Shield as Shield
import AWS.Shield.Types as ShieldTypes


-- | <p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.</p>
createProtection :: forall eff. Shield.Service -> ShieldTypes.CreateProtectionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.CreateProtectionResponse
createProtection (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createProtection"


-- | <p>Activates AWS Shield Advanced for an account.</p>
createSubscription :: forall eff. Shield.Service -> ShieldTypes.CreateSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.CreateSubscriptionResponse
createSubscription (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSubscription"


-- | <p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>
deleteProtection :: forall eff. Shield.Service -> ShieldTypes.DeleteProtectionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.DeleteProtectionResponse
deleteProtection (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteProtection"


-- | <p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>
deleteSubscription :: forall eff. Shield.Service -> ShieldTypes.DeleteSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.DeleteSubscriptionResponse
deleteSubscription (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSubscription"


-- | <p>Describes the details of a DDoS attack. </p>
describeAttack :: forall eff. Shield.Service -> ShieldTypes.DescribeAttackRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.DescribeAttackResponse
describeAttack (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAttack"


-- | <p>Lists the details of a <a>Protection</a> object.</p>
describeProtection :: forall eff. Shield.Service -> ShieldTypes.DescribeProtectionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.DescribeProtectionResponse
describeProtection (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeProtection"


-- | <p>Provides details about the AWS Shield Advanced subscription for an account.</p>
describeSubscription :: forall eff. Shield.Service -> ShieldTypes.DescribeSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.DescribeSubscriptionResponse
describeSubscription (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSubscription"


-- | <p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>
getSubscriptionState :: forall eff. Shield.Service -> ShieldTypes.GetSubscriptionStateRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.GetSubscriptionStateResponse
getSubscriptionState (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSubscriptionState"


-- | <p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>
listAttacks :: forall eff. Shield.Service -> ShieldTypes.ListAttacksRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.ListAttacksResponse
listAttacks (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAttacks"


-- | <p>Lists all <a>Protection</a> objects for the account.</p>
listProtections :: forall eff. Shield.Service -> ShieldTypes.ListProtectionsRequest -> Aff (exception :: EXCEPTION | eff) ShieldTypes.ListProtectionsResponse
listProtections (Shield.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listProtections"
