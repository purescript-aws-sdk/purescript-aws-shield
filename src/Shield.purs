

-- | <fullname>AWS Shield Advanced</fullname> <p>This is the <i>AWS Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF and AWS Shield Developer Guide</a>.</p>
module AWS.Shield where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.</p>
createProtection :: forall eff. CreateProtectionRequest -> Aff (exception :: EXCEPTION | eff) CreateProtectionResponse
createProtection = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "createProtection"


-- | <p>Activates AWS Shield Advanced for an account.</p>
createSubscription :: forall eff. CreateSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) CreateSubscriptionResponse
createSubscription = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "createSubscription"


-- | <p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>
deleteProtection :: forall eff. DeleteProtectionRequest -> Aff (exception :: EXCEPTION | eff) DeleteProtectionResponse
deleteProtection = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "deleteProtection"


-- | <p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>
deleteSubscription :: forall eff. DeleteSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubscriptionResponse
deleteSubscription = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "deleteSubscription"


-- | <p>Describes the details of a DDoS attack. </p>
describeAttack :: forall eff. DescribeAttackRequest -> Aff (exception :: EXCEPTION | eff) DescribeAttackResponse
describeAttack = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "describeAttack"


-- | <p>Lists the details of a <a>Protection</a> object.</p>
describeProtection :: forall eff. DescribeProtectionRequest -> Aff (exception :: EXCEPTION | eff) DescribeProtectionResponse
describeProtection = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "describeProtection"


-- | <p>Provides details about the AWS Shield Advanced subscription for an account.</p>
describeSubscription :: forall eff. DescribeSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscriptionResponse
describeSubscription = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "describeSubscription"


-- | <p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>
getSubscriptionState :: forall eff. GetSubscriptionStateRequest -> Aff (exception :: EXCEPTION | eff) GetSubscriptionStateResponse
getSubscriptionState = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "getSubscriptionState"


-- | <p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>
listAttacks :: forall eff. ListAttacksRequest -> Aff (exception :: EXCEPTION | eff) ListAttacksResponse
listAttacks = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "listAttacks"


-- | <p>Lists all <a>Protection</a> objects for the account.</p>
listProtections :: forall eff. ListProtectionsRequest -> Aff (exception :: EXCEPTION | eff) ListProtectionsResponse
listProtections = Request.request service method  where
    service = Request.ServiceName "Shield"
    method = Request.MethodName "listProtections"


-- | <p>The details of a DDoS attack.</p>
newtype AttackDetail = AttackDetail 
  { "AttackId" :: NullOrUndefined.NullOrUndefined (AttackId)
  , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn)
  , "SubResources" :: NullOrUndefined.NullOrUndefined (SubResourceSummaryList)
  , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  , "AttackCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList)
  , "AttackProperties" :: NullOrUndefined.NullOrUndefined (AttackProperties)
  , "Mitigations" :: NullOrUndefined.NullOrUndefined (MitigationList)
  }
derive instance newtypeAttackDetail :: Newtype AttackDetail _
derive instance repGenericAttackDetail :: Generic AttackDetail _
instance showAttackDetail :: Show AttackDetail where
  show = genericShow
instance decodeAttackDetail :: Decode AttackDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackDetail :: Encode AttackDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttackDetail from required parameters
newAttackDetail :: AttackDetail
newAttackDetail  = AttackDetail { "AttackCounters": (NullOrUndefined Nothing), "AttackId": (NullOrUndefined Nothing), "AttackProperties": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "Mitigations": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "SubResources": (NullOrUndefined Nothing) }

-- | Constructs AttackDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackDetail' :: ( { "AttackId" :: NullOrUndefined.NullOrUndefined (AttackId) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "SubResources" :: NullOrUndefined.NullOrUndefined (SubResourceSummaryList) , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "AttackCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) , "AttackProperties" :: NullOrUndefined.NullOrUndefined (AttackProperties) , "Mitigations" :: NullOrUndefined.NullOrUndefined (MitigationList) } -> {"AttackId" :: NullOrUndefined.NullOrUndefined (AttackId) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "SubResources" :: NullOrUndefined.NullOrUndefined (SubResourceSummaryList) , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "AttackCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) , "AttackProperties" :: NullOrUndefined.NullOrUndefined (AttackProperties) , "Mitigations" :: NullOrUndefined.NullOrUndefined (MitigationList) } ) -> AttackDetail
newAttackDetail'  customize = (AttackDetail <<< customize) { "AttackCounters": (NullOrUndefined Nothing), "AttackId": (NullOrUndefined Nothing), "AttackProperties": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "Mitigations": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "SubResources": (NullOrUndefined Nothing) }



newtype AttackId = AttackId String
derive instance newtypeAttackId :: Newtype AttackId _
derive instance repGenericAttackId :: Generic AttackId _
instance showAttackId :: Show AttackId where
  show = genericShow
instance decodeAttackId :: Decode AttackId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackId :: Encode AttackId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttackLayer = AttackLayer String
derive instance newtypeAttackLayer :: Newtype AttackLayer _
derive instance repGenericAttackLayer :: Generic AttackLayer _
instance showAttackLayer :: Show AttackLayer where
  show = genericShow
instance decodeAttackLayer :: Decode AttackLayer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackLayer :: Encode AttackLayer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttackProperties = AttackProperties (Array AttackProperty)
derive instance newtypeAttackProperties :: Newtype AttackProperties _
derive instance repGenericAttackProperties :: Generic AttackProperties _
instance showAttackProperties :: Show AttackProperties where
  show = genericShow
instance decodeAttackProperties :: Decode AttackProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackProperties :: Encode AttackProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Details of the described attack.</p>
newtype AttackProperty = AttackProperty 
  { "AttackLayer" :: NullOrUndefined.NullOrUndefined (AttackLayer)
  , "AttackPropertyIdentifier" :: NullOrUndefined.NullOrUndefined (AttackPropertyIdentifier)
  , "TopContributors" :: NullOrUndefined.NullOrUndefined (TopContributors)
  , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'')
  , "Total" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeAttackProperty :: Newtype AttackProperty _
derive instance repGenericAttackProperty :: Generic AttackProperty _
instance showAttackProperty :: Show AttackProperty where
  show = genericShow
instance decodeAttackProperty :: Decode AttackProperty where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackProperty :: Encode AttackProperty where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttackProperty from required parameters
newAttackProperty :: AttackProperty
newAttackProperty  = AttackProperty { "AttackLayer": (NullOrUndefined Nothing), "AttackPropertyIdentifier": (NullOrUndefined Nothing), "TopContributors": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs AttackProperty's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackProperty' :: ( { "AttackLayer" :: NullOrUndefined.NullOrUndefined (AttackLayer) , "AttackPropertyIdentifier" :: NullOrUndefined.NullOrUndefined (AttackPropertyIdentifier) , "TopContributors" :: NullOrUndefined.NullOrUndefined (TopContributors) , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'') , "Total" :: NullOrUndefined.NullOrUndefined (Number) } -> {"AttackLayer" :: NullOrUndefined.NullOrUndefined (AttackLayer) , "AttackPropertyIdentifier" :: NullOrUndefined.NullOrUndefined (AttackPropertyIdentifier) , "TopContributors" :: NullOrUndefined.NullOrUndefined (TopContributors) , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'') , "Total" :: NullOrUndefined.NullOrUndefined (Number) } ) -> AttackProperty
newAttackProperty'  customize = (AttackProperty <<< customize) { "AttackLayer": (NullOrUndefined Nothing), "AttackPropertyIdentifier": (NullOrUndefined Nothing), "TopContributors": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype AttackPropertyIdentifier = AttackPropertyIdentifier String
derive instance newtypeAttackPropertyIdentifier :: Newtype AttackPropertyIdentifier _
derive instance repGenericAttackPropertyIdentifier :: Generic AttackPropertyIdentifier _
instance showAttackPropertyIdentifier :: Show AttackPropertyIdentifier where
  show = genericShow
instance decodeAttackPropertyIdentifier :: Decode AttackPropertyIdentifier where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackPropertyIdentifier :: Encode AttackPropertyIdentifier where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttackSummaries = AttackSummaries (Array AttackSummary)
derive instance newtypeAttackSummaries :: Newtype AttackSummaries _
derive instance repGenericAttackSummaries :: Generic AttackSummaries _
instance showAttackSummaries :: Show AttackSummaries where
  show = genericShow
instance decodeAttackSummaries :: Decode AttackSummaries where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackSummaries :: Encode AttackSummaries where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Summarizes all DDoS attacks for a specified time period.</p>
newtype AttackSummary = AttackSummary 
  { "AttackId" :: NullOrUndefined.NullOrUndefined (String)
  , "ResourceArn" :: NullOrUndefined.NullOrUndefined (String)
  , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  , "AttackVectors" :: NullOrUndefined.NullOrUndefined (AttackVectorDescriptionList)
  }
derive instance newtypeAttackSummary :: Newtype AttackSummary _
derive instance repGenericAttackSummary :: Generic AttackSummary _
instance showAttackSummary :: Show AttackSummary where
  show = genericShow
instance decodeAttackSummary :: Decode AttackSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackSummary :: Encode AttackSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttackSummary from required parameters
newAttackSummary :: AttackSummary
newAttackSummary  = AttackSummary { "AttackId": (NullOrUndefined Nothing), "AttackVectors": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs AttackSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackSummary' :: ( { "AttackId" :: NullOrUndefined.NullOrUndefined (String) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (String) , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "AttackVectors" :: NullOrUndefined.NullOrUndefined (AttackVectorDescriptionList) } -> {"AttackId" :: NullOrUndefined.NullOrUndefined (String) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (String) , "StartTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "EndTime" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "AttackVectors" :: NullOrUndefined.NullOrUndefined (AttackVectorDescriptionList) } ) -> AttackSummary
newAttackSummary'  customize = (AttackSummary <<< customize) { "AttackId": (NullOrUndefined Nothing), "AttackVectors": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype AttackTimestamp = AttackTimestamp Types.Timestamp
derive instance newtypeAttackTimestamp :: Newtype AttackTimestamp _
derive instance repGenericAttackTimestamp :: Generic AttackTimestamp _
instance showAttackTimestamp :: Show AttackTimestamp where
  show = genericShow
instance decodeAttackTimestamp :: Decode AttackTimestamp where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackTimestamp :: Encode AttackTimestamp where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the attack.</p>
newtype AttackVectorDescription = AttackVectorDescription 
  { "VectorType" :: (String)
  }
derive instance newtypeAttackVectorDescription :: Newtype AttackVectorDescription _
derive instance repGenericAttackVectorDescription :: Generic AttackVectorDescription _
instance showAttackVectorDescription :: Show AttackVectorDescription where
  show = genericShow
instance decodeAttackVectorDescription :: Decode AttackVectorDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackVectorDescription :: Encode AttackVectorDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AttackVectorDescription from required parameters
newAttackVectorDescription :: String -> AttackVectorDescription
newAttackVectorDescription _VectorType = AttackVectorDescription { "VectorType": _VectorType }

-- | Constructs AttackVectorDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackVectorDescription' :: String -> ( { "VectorType" :: (String) } -> {"VectorType" :: (String) } ) -> AttackVectorDescription
newAttackVectorDescription' _VectorType customize = (AttackVectorDescription <<< customize) { "VectorType": _VectorType }



newtype AttackVectorDescriptionList = AttackVectorDescriptionList (Array AttackVectorDescription)
derive instance newtypeAttackVectorDescriptionList :: Newtype AttackVectorDescriptionList _
derive instance repGenericAttackVectorDescriptionList :: Generic AttackVectorDescriptionList _
instance showAttackVectorDescriptionList :: Show AttackVectorDescriptionList where
  show = genericShow
instance decodeAttackVectorDescriptionList :: Decode AttackVectorDescriptionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttackVectorDescriptionList :: Encode AttackVectorDescriptionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A contributor to the attack and their contribution.</p>
newtype Contributor = Contributor 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Value" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeContributor :: Newtype Contributor _
derive instance repGenericContributor :: Generic Contributor _
instance showContributor :: Show Contributor where
  show = genericShow
instance decodeContributor :: Decode Contributor where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContributor :: Encode Contributor where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Contributor from required parameters
newContributor :: Contributor
newContributor  = Contributor { "Name": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Contributor's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContributor' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (Number) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (Number) } ) -> Contributor
newContributor'  customize = (Contributor <<< customize) { "Name": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype CreateProtectionRequest = CreateProtectionRequest 
  { "Name" :: (ProtectionName)
  , "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeCreateProtectionRequest :: Newtype CreateProtectionRequest _
derive instance repGenericCreateProtectionRequest :: Generic CreateProtectionRequest _
instance showCreateProtectionRequest :: Show CreateProtectionRequest where
  show = genericShow
instance decodeCreateProtectionRequest :: Decode CreateProtectionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProtectionRequest :: Encode CreateProtectionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateProtectionRequest from required parameters
newCreateProtectionRequest :: ProtectionName -> ResourceArn -> CreateProtectionRequest
newCreateProtectionRequest _Name _ResourceArn = CreateProtectionRequest { "Name": _Name, "ResourceArn": _ResourceArn }

-- | Constructs CreateProtectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProtectionRequest' :: ProtectionName -> ResourceArn -> ( { "Name" :: (ProtectionName) , "ResourceArn" :: (ResourceArn) } -> {"Name" :: (ProtectionName) , "ResourceArn" :: (ResourceArn) } ) -> CreateProtectionRequest
newCreateProtectionRequest' _Name _ResourceArn customize = (CreateProtectionRequest <<< customize) { "Name": _Name, "ResourceArn": _ResourceArn }



newtype CreateProtectionResponse = CreateProtectionResponse 
  { "ProtectionId" :: NullOrUndefined.NullOrUndefined (ProtectionId)
  }
derive instance newtypeCreateProtectionResponse :: Newtype CreateProtectionResponse _
derive instance repGenericCreateProtectionResponse :: Generic CreateProtectionResponse _
instance showCreateProtectionResponse :: Show CreateProtectionResponse where
  show = genericShow
instance decodeCreateProtectionResponse :: Decode CreateProtectionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateProtectionResponse :: Encode CreateProtectionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateProtectionResponse from required parameters
newCreateProtectionResponse :: CreateProtectionResponse
newCreateProtectionResponse  = CreateProtectionResponse { "ProtectionId": (NullOrUndefined Nothing) }

-- | Constructs CreateProtectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProtectionResponse' :: ( { "ProtectionId" :: NullOrUndefined.NullOrUndefined (ProtectionId) } -> {"ProtectionId" :: NullOrUndefined.NullOrUndefined (ProtectionId) } ) -> CreateProtectionResponse
newCreateProtectionResponse'  customize = (CreateProtectionResponse <<< customize) { "ProtectionId": (NullOrUndefined Nothing) }



newtype CreateSubscriptionRequest = CreateSubscriptionRequest Types.NoArguments
derive instance newtypeCreateSubscriptionRequest :: Newtype CreateSubscriptionRequest _
derive instance repGenericCreateSubscriptionRequest :: Generic CreateSubscriptionRequest _
instance showCreateSubscriptionRequest :: Show CreateSubscriptionRequest where
  show = genericShow
instance decodeCreateSubscriptionRequest :: Decode CreateSubscriptionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSubscriptionRequest :: Encode CreateSubscriptionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateSubscriptionResponse = CreateSubscriptionResponse Types.NoArguments
derive instance newtypeCreateSubscriptionResponse :: Newtype CreateSubscriptionResponse _
derive instance repGenericCreateSubscriptionResponse :: Generic CreateSubscriptionResponse _
instance showCreateSubscriptionResponse :: Show CreateSubscriptionResponse where
  show = genericShow
instance decodeCreateSubscriptionResponse :: Decode CreateSubscriptionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSubscriptionResponse :: Encode CreateSubscriptionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteProtectionRequest = DeleteProtectionRequest 
  { "ProtectionId" :: (ProtectionId)
  }
derive instance newtypeDeleteProtectionRequest :: Newtype DeleteProtectionRequest _
derive instance repGenericDeleteProtectionRequest :: Generic DeleteProtectionRequest _
instance showDeleteProtectionRequest :: Show DeleteProtectionRequest where
  show = genericShow
instance decodeDeleteProtectionRequest :: Decode DeleteProtectionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProtectionRequest :: Encode DeleteProtectionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteProtectionRequest from required parameters
newDeleteProtectionRequest :: ProtectionId -> DeleteProtectionRequest
newDeleteProtectionRequest _ProtectionId = DeleteProtectionRequest { "ProtectionId": _ProtectionId }

-- | Constructs DeleteProtectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteProtectionRequest' :: ProtectionId -> ( { "ProtectionId" :: (ProtectionId) } -> {"ProtectionId" :: (ProtectionId) } ) -> DeleteProtectionRequest
newDeleteProtectionRequest' _ProtectionId customize = (DeleteProtectionRequest <<< customize) { "ProtectionId": _ProtectionId }



newtype DeleteProtectionResponse = DeleteProtectionResponse Types.NoArguments
derive instance newtypeDeleteProtectionResponse :: Newtype DeleteProtectionResponse _
derive instance repGenericDeleteProtectionResponse :: Generic DeleteProtectionResponse _
instance showDeleteProtectionResponse :: Show DeleteProtectionResponse where
  show = genericShow
instance decodeDeleteProtectionResponse :: Decode DeleteProtectionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteProtectionResponse :: Encode DeleteProtectionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteSubscriptionRequest = DeleteSubscriptionRequest Types.NoArguments
derive instance newtypeDeleteSubscriptionRequest :: Newtype DeleteSubscriptionRequest _
derive instance repGenericDeleteSubscriptionRequest :: Generic DeleteSubscriptionRequest _
instance showDeleteSubscriptionRequest :: Show DeleteSubscriptionRequest where
  show = genericShow
instance decodeDeleteSubscriptionRequest :: Decode DeleteSubscriptionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSubscriptionRequest :: Encode DeleteSubscriptionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteSubscriptionResponse = DeleteSubscriptionResponse Types.NoArguments
derive instance newtypeDeleteSubscriptionResponse :: Newtype DeleteSubscriptionResponse _
derive instance repGenericDeleteSubscriptionResponse :: Generic DeleteSubscriptionResponse _
instance showDeleteSubscriptionResponse :: Show DeleteSubscriptionResponse where
  show = genericShow
instance decodeDeleteSubscriptionResponse :: Decode DeleteSubscriptionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSubscriptionResponse :: Encode DeleteSubscriptionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeAttackRequest = DescribeAttackRequest 
  { "AttackId" :: (AttackId)
  }
derive instance newtypeDescribeAttackRequest :: Newtype DescribeAttackRequest _
derive instance repGenericDescribeAttackRequest :: Generic DescribeAttackRequest _
instance showDescribeAttackRequest :: Show DescribeAttackRequest where
  show = genericShow
instance decodeDescribeAttackRequest :: Decode DescribeAttackRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAttackRequest :: Encode DescribeAttackRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAttackRequest from required parameters
newDescribeAttackRequest :: AttackId -> DescribeAttackRequest
newDescribeAttackRequest _AttackId = DescribeAttackRequest { "AttackId": _AttackId }

-- | Constructs DescribeAttackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAttackRequest' :: AttackId -> ( { "AttackId" :: (AttackId) } -> {"AttackId" :: (AttackId) } ) -> DescribeAttackRequest
newDescribeAttackRequest' _AttackId customize = (DescribeAttackRequest <<< customize) { "AttackId": _AttackId }



newtype DescribeAttackResponse = DescribeAttackResponse 
  { "Attack" :: NullOrUndefined.NullOrUndefined (AttackDetail)
  }
derive instance newtypeDescribeAttackResponse :: Newtype DescribeAttackResponse _
derive instance repGenericDescribeAttackResponse :: Generic DescribeAttackResponse _
instance showDescribeAttackResponse :: Show DescribeAttackResponse where
  show = genericShow
instance decodeDescribeAttackResponse :: Decode DescribeAttackResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAttackResponse :: Encode DescribeAttackResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAttackResponse from required parameters
newDescribeAttackResponse :: DescribeAttackResponse
newDescribeAttackResponse  = DescribeAttackResponse { "Attack": (NullOrUndefined Nothing) }

-- | Constructs DescribeAttackResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAttackResponse' :: ( { "Attack" :: NullOrUndefined.NullOrUndefined (AttackDetail) } -> {"Attack" :: NullOrUndefined.NullOrUndefined (AttackDetail) } ) -> DescribeAttackResponse
newDescribeAttackResponse'  customize = (DescribeAttackResponse <<< customize) { "Attack": (NullOrUndefined Nothing) }



newtype DescribeProtectionRequest = DescribeProtectionRequest 
  { "ProtectionId" :: (ProtectionId)
  }
derive instance newtypeDescribeProtectionRequest :: Newtype DescribeProtectionRequest _
derive instance repGenericDescribeProtectionRequest :: Generic DescribeProtectionRequest _
instance showDescribeProtectionRequest :: Show DescribeProtectionRequest where
  show = genericShow
instance decodeDescribeProtectionRequest :: Decode DescribeProtectionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeProtectionRequest :: Encode DescribeProtectionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeProtectionRequest from required parameters
newDescribeProtectionRequest :: ProtectionId -> DescribeProtectionRequest
newDescribeProtectionRequest _ProtectionId = DescribeProtectionRequest { "ProtectionId": _ProtectionId }

-- | Constructs DescribeProtectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProtectionRequest' :: ProtectionId -> ( { "ProtectionId" :: (ProtectionId) } -> {"ProtectionId" :: (ProtectionId) } ) -> DescribeProtectionRequest
newDescribeProtectionRequest' _ProtectionId customize = (DescribeProtectionRequest <<< customize) { "ProtectionId": _ProtectionId }



newtype DescribeProtectionResponse = DescribeProtectionResponse 
  { "Protection" :: NullOrUndefined.NullOrUndefined (Protection)
  }
derive instance newtypeDescribeProtectionResponse :: Newtype DescribeProtectionResponse _
derive instance repGenericDescribeProtectionResponse :: Generic DescribeProtectionResponse _
instance showDescribeProtectionResponse :: Show DescribeProtectionResponse where
  show = genericShow
instance decodeDescribeProtectionResponse :: Decode DescribeProtectionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeProtectionResponse :: Encode DescribeProtectionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeProtectionResponse from required parameters
newDescribeProtectionResponse :: DescribeProtectionResponse
newDescribeProtectionResponse  = DescribeProtectionResponse { "Protection": (NullOrUndefined Nothing) }

-- | Constructs DescribeProtectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProtectionResponse' :: ( { "Protection" :: NullOrUndefined.NullOrUndefined (Protection) } -> {"Protection" :: NullOrUndefined.NullOrUndefined (Protection) } ) -> DescribeProtectionResponse
newDescribeProtectionResponse'  customize = (DescribeProtectionResponse <<< customize) { "Protection": (NullOrUndefined Nothing) }



newtype DescribeSubscriptionRequest = DescribeSubscriptionRequest Types.NoArguments
derive instance newtypeDescribeSubscriptionRequest :: Newtype DescribeSubscriptionRequest _
derive instance repGenericDescribeSubscriptionRequest :: Generic DescribeSubscriptionRequest _
instance showDescribeSubscriptionRequest :: Show DescribeSubscriptionRequest where
  show = genericShow
instance decodeDescribeSubscriptionRequest :: Decode DescribeSubscriptionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeSubscriptionRequest :: Encode DescribeSubscriptionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DescribeSubscriptionResponse = DescribeSubscriptionResponse 
  { "Subscription" :: NullOrUndefined.NullOrUndefined (Subscription)
  }
derive instance newtypeDescribeSubscriptionResponse :: Newtype DescribeSubscriptionResponse _
derive instance repGenericDescribeSubscriptionResponse :: Generic DescribeSubscriptionResponse _
instance showDescribeSubscriptionResponse :: Show DescribeSubscriptionResponse where
  show = genericShow
instance decodeDescribeSubscriptionResponse :: Decode DescribeSubscriptionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeSubscriptionResponse :: Encode DescribeSubscriptionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeSubscriptionResponse from required parameters
newDescribeSubscriptionResponse :: DescribeSubscriptionResponse
newDescribeSubscriptionResponse  = DescribeSubscriptionResponse { "Subscription": (NullOrUndefined Nothing) }

-- | Constructs DescribeSubscriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubscriptionResponse' :: ( { "Subscription" :: NullOrUndefined.NullOrUndefined (Subscription) } -> {"Subscription" :: NullOrUndefined.NullOrUndefined (Subscription) } ) -> DescribeSubscriptionResponse
newDescribeSubscriptionResponse'  customize = (DescribeSubscriptionResponse <<< customize) { "Subscription": (NullOrUndefined Nothing) }



newtype DurationInSeconds = DurationInSeconds Number
derive instance newtypeDurationInSeconds :: Newtype DurationInSeconds _
derive instance repGenericDurationInSeconds :: Generic DurationInSeconds _
instance showDurationInSeconds :: Show DurationInSeconds where
  show = genericShow
instance decodeDurationInSeconds :: Decode DurationInSeconds where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDurationInSeconds :: Encode DurationInSeconds where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetSubscriptionStateRequest = GetSubscriptionStateRequest Types.NoArguments
derive instance newtypeGetSubscriptionStateRequest :: Newtype GetSubscriptionStateRequest _
derive instance repGenericGetSubscriptionStateRequest :: Generic GetSubscriptionStateRequest _
instance showGetSubscriptionStateRequest :: Show GetSubscriptionStateRequest where
  show = genericShow
instance decodeGetSubscriptionStateRequest :: Decode GetSubscriptionStateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSubscriptionStateRequest :: Encode GetSubscriptionStateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetSubscriptionStateResponse = GetSubscriptionStateResponse 
  { "SubscriptionState" :: (SubscriptionState)
  }
derive instance newtypeGetSubscriptionStateResponse :: Newtype GetSubscriptionStateResponse _
derive instance repGenericGetSubscriptionStateResponse :: Generic GetSubscriptionStateResponse _
instance showGetSubscriptionStateResponse :: Show GetSubscriptionStateResponse where
  show = genericShow
instance decodeGetSubscriptionStateResponse :: Decode GetSubscriptionStateResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSubscriptionStateResponse :: Encode GetSubscriptionStateResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSubscriptionStateResponse from required parameters
newGetSubscriptionStateResponse :: SubscriptionState -> GetSubscriptionStateResponse
newGetSubscriptionStateResponse _SubscriptionState = GetSubscriptionStateResponse { "SubscriptionState": _SubscriptionState }

-- | Constructs GetSubscriptionStateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionStateResponse' :: SubscriptionState -> ( { "SubscriptionState" :: (SubscriptionState) } -> {"SubscriptionState" :: (SubscriptionState) } ) -> GetSubscriptionStateResponse
newGetSubscriptionStateResponse' _SubscriptionState customize = (GetSubscriptionStateResponse <<< customize) { "SubscriptionState": _SubscriptionState }



-- | <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where
  show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalErrorException :: Encode InternalErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": (NullOrUndefined Nothing) }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Exception that indicates that the operation would not cause any change to occur.</p>
newtype InvalidOperationException = InvalidOperationException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidOperationException :: Newtype InvalidOperationException _
derive instance repGenericInvalidOperationException :: Generic InvalidOperationException _
instance showInvalidOperationException :: Show InvalidOperationException where
  show = genericShow
instance decodeInvalidOperationException :: Decode InvalidOperationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidOperationException :: Encode InvalidOperationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidOperationException from required parameters
newInvalidOperationException :: InvalidOperationException
newInvalidOperationException  = InvalidOperationException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOperationException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InvalidOperationException
newInvalidOperationException'  customize = (InvalidOperationException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Exception that indicates that the parameters passed to the API are invalid. </p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where
  show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidParameterException :: Encode InvalidParameterException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
newtype InvalidResourceException = InvalidResourceException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeInvalidResourceException :: Newtype InvalidResourceException _
derive instance repGenericInvalidResourceException :: Generic InvalidResourceException _
instance showInvalidResourceException :: Show InvalidResourceException where
  show = genericShow
instance decodeInvalidResourceException :: Decode InvalidResourceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidResourceException :: Encode InvalidResourceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidResourceException from required parameters
newInvalidResourceException :: InvalidResourceException
newInvalidResourceException  = InvalidResourceException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidResourceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResourceException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> InvalidResourceException
newInvalidResourceException'  customize = (InvalidResourceException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LimitNumber = LimitNumber Number
derive instance newtypeLimitNumber :: Newtype LimitNumber _
derive instance repGenericLimitNumber :: Generic LimitNumber _
instance showLimitNumber :: Show LimitNumber where
  show = genericShow
instance decodeLimitNumber :: Decode LimitNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitNumber :: Encode LimitNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype LimitType = LimitType String
derive instance newtypeLimitType :: Newtype LimitType _
derive instance repGenericLimitType :: Generic LimitType _
instance showLimitType :: Show LimitType where
  show = genericShow
instance decodeLimitType :: Decode LimitType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitType :: Encode LimitType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception that indicates that the operation would exceed a limit.</p> <p> <code>Type</code> is the type of limit that would be exceeded.</p> <p> <code>Limit</code> is the threshold that would be exceeded.</p>
newtype LimitsExceededException = LimitsExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  , "Type" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Limit" :: NullOrUndefined.NullOrUndefined (LimitNumber)
  }
derive instance newtypeLimitsExceededException :: Newtype LimitsExceededException _
derive instance repGenericLimitsExceededException :: Generic LimitsExceededException _
instance showLimitsExceededException :: Show LimitsExceededException where
  show = genericShow
instance decodeLimitsExceededException :: Decode LimitsExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitsExceededException :: Encode LimitsExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitsExceededException from required parameters
newLimitsExceededException :: LimitsExceededException
newLimitsExceededException  = LimitsExceededException { "Limit": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs LimitsExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitsExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') , "Type" :: NullOrUndefined.NullOrUndefined (LimitType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitNumber) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') , "Type" :: NullOrUndefined.NullOrUndefined (LimitType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitNumber) } ) -> LimitsExceededException
newLimitsExceededException'  customize = (LimitsExceededException <<< customize) { "Limit": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



newtype ListAttacksRequest = ListAttacksRequest 
  { "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceArnFilterList)
  , "StartTime" :: NullOrUndefined.NullOrUndefined (TimeRange)
  , "EndTime" :: NullOrUndefined.NullOrUndefined (TimeRange)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListAttacksRequest :: Newtype ListAttacksRequest _
derive instance repGenericListAttacksRequest :: Generic ListAttacksRequest _
instance showListAttacksRequest :: Show ListAttacksRequest where
  show = genericShow
instance decodeListAttacksRequest :: Decode ListAttacksRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttacksRequest :: Encode ListAttacksRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttacksRequest from required parameters
newListAttacksRequest :: ListAttacksRequest
newListAttacksRequest  = ListAttacksRequest { "EndTime": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs ListAttacksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttacksRequest' :: ( { "ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceArnFilterList) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimeRange) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimeRange) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ResourceArns" :: NullOrUndefined.NullOrUndefined (ResourceArnFilterList) , "StartTime" :: NullOrUndefined.NullOrUndefined (TimeRange) , "EndTime" :: NullOrUndefined.NullOrUndefined (TimeRange) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListAttacksRequest
newListAttacksRequest'  customize = (ListAttacksRequest <<< customize) { "EndTime": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "ResourceArns": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype ListAttacksResponse = ListAttacksResponse 
  { "AttackSummaries" :: NullOrUndefined.NullOrUndefined (AttackSummaries)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeListAttacksResponse :: Newtype ListAttacksResponse _
derive instance repGenericListAttacksResponse :: Generic ListAttacksResponse _
instance showListAttacksResponse :: Show ListAttacksResponse where
  show = genericShow
instance decodeListAttacksResponse :: Decode ListAttacksResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAttacksResponse :: Encode ListAttacksResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAttacksResponse from required parameters
newListAttacksResponse :: ListAttacksResponse
newListAttacksResponse  = ListAttacksResponse { "AttackSummaries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAttacksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttacksResponse' :: ( { "AttackSummaries" :: NullOrUndefined.NullOrUndefined (AttackSummaries) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"AttackSummaries" :: NullOrUndefined.NullOrUndefined (AttackSummaries) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> ListAttacksResponse
newListAttacksResponse'  customize = (ListAttacksResponse <<< customize) { "AttackSummaries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProtectionsRequest = ListProtectionsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListProtectionsRequest :: Newtype ListProtectionsRequest _
derive instance repGenericListProtectionsRequest :: Generic ListProtectionsRequest _
instance showListProtectionsRequest :: Show ListProtectionsRequest where
  show = genericShow
instance decodeListProtectionsRequest :: Decode ListProtectionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProtectionsRequest :: Encode ListProtectionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProtectionsRequest from required parameters
newListProtectionsRequest :: ListProtectionsRequest
newListProtectionsRequest  = ListProtectionsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListProtectionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProtectionsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (Token) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListProtectionsRequest
newListProtectionsRequest'  customize = (ListProtectionsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListProtectionsResponse = ListProtectionsResponse 
  { "Protections" :: NullOrUndefined.NullOrUndefined (Protections)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (Token)
  }
derive instance newtypeListProtectionsResponse :: Newtype ListProtectionsResponse _
derive instance repGenericListProtectionsResponse :: Generic ListProtectionsResponse _
instance showListProtectionsResponse :: Show ListProtectionsResponse where
  show = genericShow
instance decodeListProtectionsResponse :: Decode ListProtectionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListProtectionsResponse :: Encode ListProtectionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListProtectionsResponse from required parameters
newListProtectionsResponse :: ListProtectionsResponse
newListProtectionsResponse  = ListProtectionsResponse { "NextToken": (NullOrUndefined Nothing), "Protections": (NullOrUndefined Nothing) }

-- | Constructs ListProtectionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProtectionsResponse' :: ( { "Protections" :: NullOrUndefined.NullOrUndefined (Protections) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } -> {"Protections" :: NullOrUndefined.NullOrUndefined (Protections) , "NextToken" :: NullOrUndefined.NullOrUndefined (Token) } ) -> ListProtectionsResponse
newListProtectionsResponse'  customize = (ListProtectionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Protections": (NullOrUndefined Nothing) }



-- | <p>Exception that indicates that the subscription you are trying to delete has not yet completed the 1-year commitment. You cannot delete this subscription.</p>
newtype LockedSubscriptionException = LockedSubscriptionException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeLockedSubscriptionException :: Newtype LockedSubscriptionException _
derive instance repGenericLockedSubscriptionException :: Generic LockedSubscriptionException _
instance showLockedSubscriptionException :: Show LockedSubscriptionException where
  show = genericShow
instance decodeLockedSubscriptionException :: Decode LockedSubscriptionException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLockedSubscriptionException :: Encode LockedSubscriptionException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LockedSubscriptionException from required parameters
newLockedSubscriptionException :: LockedSubscriptionException
newLockedSubscriptionException  = LockedSubscriptionException { "message": (NullOrUndefined Nothing) }

-- | Constructs LockedSubscriptionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLockedSubscriptionException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> LockedSubscriptionException
newLockedSubscriptionException'  customize = (LockedSubscriptionException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The mitigation applied to a DDoS attack.</p>
newtype Mitigation = Mitigation 
  { "MitigationName" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeMitigation :: Newtype Mitigation _
derive instance repGenericMitigation :: Generic Mitigation _
instance showMitigation :: Show Mitigation where
  show = genericShow
instance decodeMitigation :: Decode Mitigation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMitigation :: Encode Mitigation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Mitigation from required parameters
newMitigation :: Mitigation
newMitigation  = Mitigation { "MitigationName": (NullOrUndefined Nothing) }

-- | Constructs Mitigation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMitigation' :: ( { "MitigationName" :: NullOrUndefined.NullOrUndefined (String) } -> {"MitigationName" :: NullOrUndefined.NullOrUndefined (String) } ) -> Mitigation
newMitigation'  customize = (Mitigation <<< customize) { "MitigationName": (NullOrUndefined Nothing) }



newtype MitigationList = MitigationList (Array Mitigation)
derive instance newtypeMitigationList :: Newtype MitigationList _
derive instance repGenericMitigationList :: Generic MitigationList _
instance showMitigationList :: Show MitigationList where
  show = genericShow
instance decodeMitigationList :: Decode MitigationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMitigationList :: Encode MitigationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>
newtype OptimisticLockException = OptimisticLockException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeOptimisticLockException :: Newtype OptimisticLockException _
derive instance repGenericOptimisticLockException :: Generic OptimisticLockException _
instance showOptimisticLockException :: Show OptimisticLockException where
  show = genericShow
instance decodeOptimisticLockException :: Decode OptimisticLockException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOptimisticLockException :: Encode OptimisticLockException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OptimisticLockException from required parameters
newOptimisticLockException :: OptimisticLockException
newOptimisticLockException  = OptimisticLockException { "message": (NullOrUndefined Nothing) }

-- | Constructs OptimisticLockException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptimisticLockException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> OptimisticLockException
newOptimisticLockException'  customize = (OptimisticLockException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>An object that represents a resource that is under DDoS protection.</p>
newtype Protection = Protection 
  { "Id" :: NullOrUndefined.NullOrUndefined (ProtectionId)
  , "Name" :: NullOrUndefined.NullOrUndefined (ProtectionName)
  , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn)
  }
derive instance newtypeProtection :: Newtype Protection _
derive instance repGenericProtection :: Generic Protection _
instance showProtection :: Show Protection where
  show = genericShow
instance decodeProtection :: Decode Protection where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProtection :: Encode Protection where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Protection from required parameters
newProtection :: Protection
newProtection  = Protection { "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing) }

-- | Constructs Protection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProtection' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ProtectionId) , "Name" :: NullOrUndefined.NullOrUndefined (ProtectionName) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ProtectionId) , "Name" :: NullOrUndefined.NullOrUndefined (ProtectionName) , "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) } ) -> Protection
newProtection'  customize = (Protection <<< customize) { "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ResourceArn": (NullOrUndefined Nothing) }



newtype ProtectionId = ProtectionId String
derive instance newtypeProtectionId :: Newtype ProtectionId _
derive instance repGenericProtectionId :: Generic ProtectionId _
instance showProtectionId :: Show ProtectionId where
  show = genericShow
instance decodeProtectionId :: Decode ProtectionId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProtectionId :: Encode ProtectionId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ProtectionName = ProtectionName String
derive instance newtypeProtectionName :: Newtype ProtectionName _
derive instance repGenericProtectionName :: Generic ProtectionName _
instance showProtectionName :: Show ProtectionName where
  show = genericShow
instance decodeProtectionName :: Decode ProtectionName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProtectionName :: Encode ProtectionName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Protections = Protections (Array Protection)
derive instance newtypeProtections :: Newtype Protections _
derive instance repGenericProtections :: Generic Protections _
instance showProtections :: Show Protections where
  show = genericShow
instance decodeProtections :: Decode Protections where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeProtections :: Encode Protections where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception indicating the specified resource already exists.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where
  show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceAlreadyExistsException from required parameters
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
newResourceAlreadyExistsException  = ResourceAlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> ResourceAlreadyExistsException
newResourceAlreadyExistsException'  customize = (ResourceAlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where
  show = genericShow
instance decodeResourceArn :: Decode ResourceArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceArn :: Encode ResourceArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceArnFilterList = ResourceArnFilterList (Array ResourceArn)
derive instance newtypeResourceArnFilterList :: Newtype ResourceArnFilterList _
derive instance repGenericResourceArnFilterList :: Generic ResourceArnFilterList _
instance showResourceArnFilterList :: Show ResourceArnFilterList where
  show = genericShow
instance decodeResourceArnFilterList :: Decode ResourceArnFilterList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceArnFilterList :: Encode ResourceArnFilterList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Exception indicating the specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage')
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessage') } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The attack information for the specified SubResource.</p>
newtype SubResourceSummary = SubResourceSummary 
  { "Type" :: NullOrUndefined.NullOrUndefined (SubResourceType)
  , "Id" :: NullOrUndefined.NullOrUndefined (String)
  , "AttackVectors" :: NullOrUndefined.NullOrUndefined (SummarizedAttackVectorList)
  , "Counters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList)
  }
derive instance newtypeSubResourceSummary :: Newtype SubResourceSummary _
derive instance repGenericSubResourceSummary :: Generic SubResourceSummary _
instance showSubResourceSummary :: Show SubResourceSummary where
  show = genericShow
instance decodeSubResourceSummary :: Decode SubResourceSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubResourceSummary :: Encode SubResourceSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SubResourceSummary from required parameters
newSubResourceSummary :: SubResourceSummary
newSubResourceSummary  = SubResourceSummary { "AttackVectors": (NullOrUndefined Nothing), "Counters": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs SubResourceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubResourceSummary' :: ( { "Type" :: NullOrUndefined.NullOrUndefined (SubResourceType) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "AttackVectors" :: NullOrUndefined.NullOrUndefined (SummarizedAttackVectorList) , "Counters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) } -> {"Type" :: NullOrUndefined.NullOrUndefined (SubResourceType) , "Id" :: NullOrUndefined.NullOrUndefined (String) , "AttackVectors" :: NullOrUndefined.NullOrUndefined (SummarizedAttackVectorList) , "Counters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) } ) -> SubResourceSummary
newSubResourceSummary'  customize = (SubResourceSummary <<< customize) { "AttackVectors": (NullOrUndefined Nothing), "Counters": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype SubResourceSummaryList = SubResourceSummaryList (Array SubResourceSummary)
derive instance newtypeSubResourceSummaryList :: Newtype SubResourceSummaryList _
derive instance repGenericSubResourceSummaryList :: Generic SubResourceSummaryList _
instance showSubResourceSummaryList :: Show SubResourceSummaryList where
  show = genericShow
instance decodeSubResourceSummaryList :: Decode SubResourceSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubResourceSummaryList :: Encode SubResourceSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SubResourceType = SubResourceType String
derive instance newtypeSubResourceType :: Newtype SubResourceType _
derive instance repGenericSubResourceType :: Generic SubResourceType _
instance showSubResourceType :: Show SubResourceType where
  show = genericShow
instance decodeSubResourceType :: Decode SubResourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubResourceType :: Encode SubResourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Information about the AWS Shield Advanced subscription for an account.</p>
newtype Subscription = Subscription 
  { "StartTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "TimeCommitmentInSeconds" :: NullOrUndefined.NullOrUndefined (DurationInSeconds)
  }
derive instance newtypeSubscription :: Newtype Subscription _
derive instance repGenericSubscription :: Generic Subscription _
instance showSubscription :: Show Subscription where
  show = genericShow
instance decodeSubscription :: Decode Subscription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscription :: Encode Subscription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Subscription from required parameters
newSubscription :: Subscription
newSubscription  = Subscription { "StartTime": (NullOrUndefined Nothing), "TimeCommitmentInSeconds": (NullOrUndefined Nothing) }

-- | Constructs Subscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscription' :: ( { "StartTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "TimeCommitmentInSeconds" :: NullOrUndefined.NullOrUndefined (DurationInSeconds) } -> {"StartTime" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "TimeCommitmentInSeconds" :: NullOrUndefined.NullOrUndefined (DurationInSeconds) } ) -> Subscription
newSubscription'  customize = (Subscription <<< customize) { "StartTime": (NullOrUndefined Nothing), "TimeCommitmentInSeconds": (NullOrUndefined Nothing) }



newtype SubscriptionState = SubscriptionState String
derive instance newtypeSubscriptionState :: Newtype SubscriptionState _
derive instance repGenericSubscriptionState :: Generic SubscriptionState _
instance showSubscriptionState :: Show SubscriptionState where
  show = genericShow
instance decodeSubscriptionState :: Decode SubscriptionState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSubscriptionState :: Encode SubscriptionState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A summary of information about the attack.</p>
newtype SummarizedAttackVector = SummarizedAttackVector 
  { "VectorType" :: (String)
  , "VectorCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList)
  }
derive instance newtypeSummarizedAttackVector :: Newtype SummarizedAttackVector _
derive instance repGenericSummarizedAttackVector :: Generic SummarizedAttackVector _
instance showSummarizedAttackVector :: Show SummarizedAttackVector where
  show = genericShow
instance decodeSummarizedAttackVector :: Decode SummarizedAttackVector where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummarizedAttackVector :: Encode SummarizedAttackVector where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SummarizedAttackVector from required parameters
newSummarizedAttackVector :: String -> SummarizedAttackVector
newSummarizedAttackVector _VectorType = SummarizedAttackVector { "VectorType": _VectorType, "VectorCounters": (NullOrUndefined Nothing) }

-- | Constructs SummarizedAttackVector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSummarizedAttackVector' :: String -> ( { "VectorType" :: (String) , "VectorCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) } -> {"VectorType" :: (String) , "VectorCounters" :: NullOrUndefined.NullOrUndefined (SummarizedCounterList) } ) -> SummarizedAttackVector
newSummarizedAttackVector' _VectorType customize = (SummarizedAttackVector <<< customize) { "VectorType": _VectorType, "VectorCounters": (NullOrUndefined Nothing) }



newtype SummarizedAttackVectorList = SummarizedAttackVectorList (Array SummarizedAttackVector)
derive instance newtypeSummarizedAttackVectorList :: Newtype SummarizedAttackVectorList _
derive instance repGenericSummarizedAttackVectorList :: Generic SummarizedAttackVectorList _
instance showSummarizedAttackVectorList :: Show SummarizedAttackVectorList where
  show = genericShow
instance decodeSummarizedAttackVectorList :: Decode SummarizedAttackVectorList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummarizedAttackVectorList :: Encode SummarizedAttackVectorList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The counter that describes a DDoS attack.</p>
newtype SummarizedCounter = SummarizedCounter 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Max" :: NullOrUndefined.NullOrUndefined (Number)
  , "Average" :: NullOrUndefined.NullOrUndefined (Number)
  , "Sum" :: NullOrUndefined.NullOrUndefined (Number)
  , "N" :: NullOrUndefined.NullOrUndefined (Int)
  , "Unit" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeSummarizedCounter :: Newtype SummarizedCounter _
derive instance repGenericSummarizedCounter :: Generic SummarizedCounter _
instance showSummarizedCounter :: Show SummarizedCounter where
  show = genericShow
instance decodeSummarizedCounter :: Decode SummarizedCounter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummarizedCounter :: Encode SummarizedCounter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SummarizedCounter from required parameters
newSummarizedCounter :: SummarizedCounter
newSummarizedCounter  = SummarizedCounter { "Average": (NullOrUndefined Nothing), "Max": (NullOrUndefined Nothing), "N": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Sum": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs SummarizedCounter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSummarizedCounter' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Max" :: NullOrUndefined.NullOrUndefined (Number) , "Average" :: NullOrUndefined.NullOrUndefined (Number) , "Sum" :: NullOrUndefined.NullOrUndefined (Number) , "N" :: NullOrUndefined.NullOrUndefined (Int) , "Unit" :: NullOrUndefined.NullOrUndefined (String) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Max" :: NullOrUndefined.NullOrUndefined (Number) , "Average" :: NullOrUndefined.NullOrUndefined (Number) , "Sum" :: NullOrUndefined.NullOrUndefined (Number) , "N" :: NullOrUndefined.NullOrUndefined (Int) , "Unit" :: NullOrUndefined.NullOrUndefined (String) } ) -> SummarizedCounter
newSummarizedCounter'  customize = (SummarizedCounter <<< customize) { "Average": (NullOrUndefined Nothing), "Max": (NullOrUndefined Nothing), "N": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Sum": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype SummarizedCounterList = SummarizedCounterList (Array SummarizedCounter)
derive instance newtypeSummarizedCounterList :: Newtype SummarizedCounterList _
derive instance repGenericSummarizedCounterList :: Generic SummarizedCounterList _
instance showSummarizedCounterList :: Show SummarizedCounterList where
  show = genericShow
instance decodeSummarizedCounterList :: Decode SummarizedCounterList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSummarizedCounterList :: Encode SummarizedCounterList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The time range.</p>
newtype TimeRange = TimeRange 
  { "FromInclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  , "ToExclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp)
  }
derive instance newtypeTimeRange :: Newtype TimeRange _
derive instance repGenericTimeRange :: Generic TimeRange _
instance showTimeRange :: Show TimeRange where
  show = genericShow
instance decodeTimeRange :: Decode TimeRange where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimeRange :: Encode TimeRange where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TimeRange from required parameters
newTimeRange :: TimeRange
newTimeRange  = TimeRange { "FromInclusive": (NullOrUndefined Nothing), "ToExclusive": (NullOrUndefined Nothing) }

-- | Constructs TimeRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimeRange' :: ( { "FromInclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "ToExclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) } -> {"FromInclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) , "ToExclusive" :: NullOrUndefined.NullOrUndefined (AttackTimestamp) } ) -> TimeRange
newTimeRange'  customize = (TimeRange <<< customize) { "FromInclusive": (NullOrUndefined Nothing), "ToExclusive": (NullOrUndefined Nothing) }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where
  show = genericShow
instance decodeToken :: Decode Token where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeToken :: Encode Token where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TopContributors = TopContributors (Array Contributor)
derive instance newtypeTopContributors :: Newtype TopContributors _
derive instance repGenericTopContributors :: Generic TopContributors _
instance showTopContributors :: Show TopContributors where
  show = genericShow
instance decodeTopContributors :: Decode TopContributors where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTopContributors :: Encode TopContributors where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Unit'' = Unit'' String
derive instance newtypeUnit'' :: Newtype Unit'' _
derive instance repGenericUnit'' :: Generic Unit'' _
instance showUnit'' :: Show Unit'' where
  show = genericShow
instance decodeUnit'' :: Decode Unit'' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnit'' :: Encode Unit'' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where
  show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage' :: Encode ErrorMessage' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

