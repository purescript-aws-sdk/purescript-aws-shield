
module AWS.Shield.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The details of a DDoS attack.</p>
newtype AttackDetail = AttackDetail 
  { "AttackId" :: Maybe (AttackId)
  , "ResourceArn" :: Maybe (ResourceArn)
  , "SubResources" :: Maybe (SubResourceSummaryList)
  , "StartTime" :: Maybe (AttackTimestamp)
  , "EndTime" :: Maybe (AttackTimestamp)
  , "AttackCounters" :: Maybe (SummarizedCounterList)
  , "AttackProperties" :: Maybe (AttackProperties)
  , "Mitigations" :: Maybe (MitigationList)
  }
derive instance newtypeAttackDetail :: Newtype AttackDetail _
derive instance repGenericAttackDetail :: Generic AttackDetail _
instance showAttackDetail :: Show AttackDetail where show = genericShow
instance decodeAttackDetail :: Decode AttackDetail where decode = genericDecode options
instance encodeAttackDetail :: Encode AttackDetail where encode = genericEncode options

-- | Constructs AttackDetail from required parameters
newAttackDetail :: AttackDetail
newAttackDetail  = AttackDetail { "AttackCounters": Nothing, "AttackId": Nothing, "AttackProperties": Nothing, "EndTime": Nothing, "Mitigations": Nothing, "ResourceArn": Nothing, "StartTime": Nothing, "SubResources": Nothing }

-- | Constructs AttackDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackDetail' :: ( { "AttackId" :: Maybe (AttackId) , "ResourceArn" :: Maybe (ResourceArn) , "SubResources" :: Maybe (SubResourceSummaryList) , "StartTime" :: Maybe (AttackTimestamp) , "EndTime" :: Maybe (AttackTimestamp) , "AttackCounters" :: Maybe (SummarizedCounterList) , "AttackProperties" :: Maybe (AttackProperties) , "Mitigations" :: Maybe (MitigationList) } -> {"AttackId" :: Maybe (AttackId) , "ResourceArn" :: Maybe (ResourceArn) , "SubResources" :: Maybe (SubResourceSummaryList) , "StartTime" :: Maybe (AttackTimestamp) , "EndTime" :: Maybe (AttackTimestamp) , "AttackCounters" :: Maybe (SummarizedCounterList) , "AttackProperties" :: Maybe (AttackProperties) , "Mitigations" :: Maybe (MitigationList) } ) -> AttackDetail
newAttackDetail'  customize = (AttackDetail <<< customize) { "AttackCounters": Nothing, "AttackId": Nothing, "AttackProperties": Nothing, "EndTime": Nothing, "Mitigations": Nothing, "ResourceArn": Nothing, "StartTime": Nothing, "SubResources": Nothing }



newtype AttackId = AttackId String
derive instance newtypeAttackId :: Newtype AttackId _
derive instance repGenericAttackId :: Generic AttackId _
instance showAttackId :: Show AttackId where show = genericShow
instance decodeAttackId :: Decode AttackId where decode = genericDecode options
instance encodeAttackId :: Encode AttackId where encode = genericEncode options



newtype AttackLayer = AttackLayer String
derive instance newtypeAttackLayer :: Newtype AttackLayer _
derive instance repGenericAttackLayer :: Generic AttackLayer _
instance showAttackLayer :: Show AttackLayer where show = genericShow
instance decodeAttackLayer :: Decode AttackLayer where decode = genericDecode options
instance encodeAttackLayer :: Encode AttackLayer where encode = genericEncode options



newtype AttackProperties = AttackProperties (Array AttackProperty)
derive instance newtypeAttackProperties :: Newtype AttackProperties _
derive instance repGenericAttackProperties :: Generic AttackProperties _
instance showAttackProperties :: Show AttackProperties where show = genericShow
instance decodeAttackProperties :: Decode AttackProperties where decode = genericDecode options
instance encodeAttackProperties :: Encode AttackProperties where encode = genericEncode options



-- | <p>Details of the described attack.</p>
newtype AttackProperty = AttackProperty 
  { "AttackLayer" :: Maybe (AttackLayer)
  , "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier)
  , "TopContributors" :: Maybe (TopContributors)
  , "Unit" :: Maybe (Unit'')
  , "Total" :: Maybe (Number)
  }
derive instance newtypeAttackProperty :: Newtype AttackProperty _
derive instance repGenericAttackProperty :: Generic AttackProperty _
instance showAttackProperty :: Show AttackProperty where show = genericShow
instance decodeAttackProperty :: Decode AttackProperty where decode = genericDecode options
instance encodeAttackProperty :: Encode AttackProperty where encode = genericEncode options

-- | Constructs AttackProperty from required parameters
newAttackProperty :: AttackProperty
newAttackProperty  = AttackProperty { "AttackLayer": Nothing, "AttackPropertyIdentifier": Nothing, "TopContributors": Nothing, "Total": Nothing, "Unit": Nothing }

-- | Constructs AttackProperty's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackProperty' :: ( { "AttackLayer" :: Maybe (AttackLayer) , "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier) , "TopContributors" :: Maybe (TopContributors) , "Unit" :: Maybe (Unit'') , "Total" :: Maybe (Number) } -> {"AttackLayer" :: Maybe (AttackLayer) , "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier) , "TopContributors" :: Maybe (TopContributors) , "Unit" :: Maybe (Unit'') , "Total" :: Maybe (Number) } ) -> AttackProperty
newAttackProperty'  customize = (AttackProperty <<< customize) { "AttackLayer": Nothing, "AttackPropertyIdentifier": Nothing, "TopContributors": Nothing, "Total": Nothing, "Unit": Nothing }



newtype AttackPropertyIdentifier = AttackPropertyIdentifier String
derive instance newtypeAttackPropertyIdentifier :: Newtype AttackPropertyIdentifier _
derive instance repGenericAttackPropertyIdentifier :: Generic AttackPropertyIdentifier _
instance showAttackPropertyIdentifier :: Show AttackPropertyIdentifier where show = genericShow
instance decodeAttackPropertyIdentifier :: Decode AttackPropertyIdentifier where decode = genericDecode options
instance encodeAttackPropertyIdentifier :: Encode AttackPropertyIdentifier where encode = genericEncode options



newtype AttackSummaries = AttackSummaries (Array AttackSummary)
derive instance newtypeAttackSummaries :: Newtype AttackSummaries _
derive instance repGenericAttackSummaries :: Generic AttackSummaries _
instance showAttackSummaries :: Show AttackSummaries where show = genericShow
instance decodeAttackSummaries :: Decode AttackSummaries where decode = genericDecode options
instance encodeAttackSummaries :: Encode AttackSummaries where encode = genericEncode options



-- | <p>Summarizes all DDoS attacks for a specified time period.</p>
newtype AttackSummary = AttackSummary 
  { "AttackId" :: Maybe (String)
  , "ResourceArn" :: Maybe (String)
  , "StartTime" :: Maybe (AttackTimestamp)
  , "EndTime" :: Maybe (AttackTimestamp)
  , "AttackVectors" :: Maybe (AttackVectorDescriptionList)
  }
derive instance newtypeAttackSummary :: Newtype AttackSummary _
derive instance repGenericAttackSummary :: Generic AttackSummary _
instance showAttackSummary :: Show AttackSummary where show = genericShow
instance decodeAttackSummary :: Decode AttackSummary where decode = genericDecode options
instance encodeAttackSummary :: Encode AttackSummary where encode = genericEncode options

-- | Constructs AttackSummary from required parameters
newAttackSummary :: AttackSummary
newAttackSummary  = AttackSummary { "AttackId": Nothing, "AttackVectors": Nothing, "EndTime": Nothing, "ResourceArn": Nothing, "StartTime": Nothing }

-- | Constructs AttackSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttackSummary' :: ( { "AttackId" :: Maybe (String) , "ResourceArn" :: Maybe (String) , "StartTime" :: Maybe (AttackTimestamp) , "EndTime" :: Maybe (AttackTimestamp) , "AttackVectors" :: Maybe (AttackVectorDescriptionList) } -> {"AttackId" :: Maybe (String) , "ResourceArn" :: Maybe (String) , "StartTime" :: Maybe (AttackTimestamp) , "EndTime" :: Maybe (AttackTimestamp) , "AttackVectors" :: Maybe (AttackVectorDescriptionList) } ) -> AttackSummary
newAttackSummary'  customize = (AttackSummary <<< customize) { "AttackId": Nothing, "AttackVectors": Nothing, "EndTime": Nothing, "ResourceArn": Nothing, "StartTime": Nothing }



newtype AttackTimestamp = AttackTimestamp Types.Timestamp
derive instance newtypeAttackTimestamp :: Newtype AttackTimestamp _
derive instance repGenericAttackTimestamp :: Generic AttackTimestamp _
instance showAttackTimestamp :: Show AttackTimestamp where show = genericShow
instance decodeAttackTimestamp :: Decode AttackTimestamp where decode = genericDecode options
instance encodeAttackTimestamp :: Encode AttackTimestamp where encode = genericEncode options



-- | <p>Describes the attack.</p>
newtype AttackVectorDescription = AttackVectorDescription 
  { "VectorType" :: (String)
  }
derive instance newtypeAttackVectorDescription :: Newtype AttackVectorDescription _
derive instance repGenericAttackVectorDescription :: Generic AttackVectorDescription _
instance showAttackVectorDescription :: Show AttackVectorDescription where show = genericShow
instance decodeAttackVectorDescription :: Decode AttackVectorDescription where decode = genericDecode options
instance encodeAttackVectorDescription :: Encode AttackVectorDescription where encode = genericEncode options

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
instance showAttackVectorDescriptionList :: Show AttackVectorDescriptionList where show = genericShow
instance decodeAttackVectorDescriptionList :: Decode AttackVectorDescriptionList where decode = genericDecode options
instance encodeAttackVectorDescriptionList :: Encode AttackVectorDescriptionList where encode = genericEncode options



-- | <p>A contributor to the attack and their contribution.</p>
newtype Contributor = Contributor 
  { "Name" :: Maybe (String)
  , "Value" :: Maybe (Number)
  }
derive instance newtypeContributor :: Newtype Contributor _
derive instance repGenericContributor :: Generic Contributor _
instance showContributor :: Show Contributor where show = genericShow
instance decodeContributor :: Decode Contributor where decode = genericDecode options
instance encodeContributor :: Encode Contributor where encode = genericEncode options

-- | Constructs Contributor from required parameters
newContributor :: Contributor
newContributor  = Contributor { "Name": Nothing, "Value": Nothing }

-- | Constructs Contributor's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContributor' :: ( { "Name" :: Maybe (String) , "Value" :: Maybe (Number) } -> {"Name" :: Maybe (String) , "Value" :: Maybe (Number) } ) -> Contributor
newContributor'  customize = (Contributor <<< customize) { "Name": Nothing, "Value": Nothing }



newtype CreateProtectionRequest = CreateProtectionRequest 
  { "Name" :: (ProtectionName)
  , "ResourceArn" :: (ResourceArn)
  }
derive instance newtypeCreateProtectionRequest :: Newtype CreateProtectionRequest _
derive instance repGenericCreateProtectionRequest :: Generic CreateProtectionRequest _
instance showCreateProtectionRequest :: Show CreateProtectionRequest where show = genericShow
instance decodeCreateProtectionRequest :: Decode CreateProtectionRequest where decode = genericDecode options
instance encodeCreateProtectionRequest :: Encode CreateProtectionRequest where encode = genericEncode options

-- | Constructs CreateProtectionRequest from required parameters
newCreateProtectionRequest :: ProtectionName -> ResourceArn -> CreateProtectionRequest
newCreateProtectionRequest _Name _ResourceArn = CreateProtectionRequest { "Name": _Name, "ResourceArn": _ResourceArn }

-- | Constructs CreateProtectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProtectionRequest' :: ProtectionName -> ResourceArn -> ( { "Name" :: (ProtectionName) , "ResourceArn" :: (ResourceArn) } -> {"Name" :: (ProtectionName) , "ResourceArn" :: (ResourceArn) } ) -> CreateProtectionRequest
newCreateProtectionRequest' _Name _ResourceArn customize = (CreateProtectionRequest <<< customize) { "Name": _Name, "ResourceArn": _ResourceArn }



newtype CreateProtectionResponse = CreateProtectionResponse 
  { "ProtectionId" :: Maybe (ProtectionId)
  }
derive instance newtypeCreateProtectionResponse :: Newtype CreateProtectionResponse _
derive instance repGenericCreateProtectionResponse :: Generic CreateProtectionResponse _
instance showCreateProtectionResponse :: Show CreateProtectionResponse where show = genericShow
instance decodeCreateProtectionResponse :: Decode CreateProtectionResponse where decode = genericDecode options
instance encodeCreateProtectionResponse :: Encode CreateProtectionResponse where encode = genericEncode options

-- | Constructs CreateProtectionResponse from required parameters
newCreateProtectionResponse :: CreateProtectionResponse
newCreateProtectionResponse  = CreateProtectionResponse { "ProtectionId": Nothing }

-- | Constructs CreateProtectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateProtectionResponse' :: ( { "ProtectionId" :: Maybe (ProtectionId) } -> {"ProtectionId" :: Maybe (ProtectionId) } ) -> CreateProtectionResponse
newCreateProtectionResponse'  customize = (CreateProtectionResponse <<< customize) { "ProtectionId": Nothing }



newtype CreateSubscriptionRequest = CreateSubscriptionRequest Types.NoArguments
derive instance newtypeCreateSubscriptionRequest :: Newtype CreateSubscriptionRequest _
derive instance repGenericCreateSubscriptionRequest :: Generic CreateSubscriptionRequest _
instance showCreateSubscriptionRequest :: Show CreateSubscriptionRequest where show = genericShow
instance decodeCreateSubscriptionRequest :: Decode CreateSubscriptionRequest where decode = genericDecode options
instance encodeCreateSubscriptionRequest :: Encode CreateSubscriptionRequest where encode = genericEncode options



newtype CreateSubscriptionResponse = CreateSubscriptionResponse Types.NoArguments
derive instance newtypeCreateSubscriptionResponse :: Newtype CreateSubscriptionResponse _
derive instance repGenericCreateSubscriptionResponse :: Generic CreateSubscriptionResponse _
instance showCreateSubscriptionResponse :: Show CreateSubscriptionResponse where show = genericShow
instance decodeCreateSubscriptionResponse :: Decode CreateSubscriptionResponse where decode = genericDecode options
instance encodeCreateSubscriptionResponse :: Encode CreateSubscriptionResponse where encode = genericEncode options



newtype DeleteProtectionRequest = DeleteProtectionRequest 
  { "ProtectionId" :: (ProtectionId)
  }
derive instance newtypeDeleteProtectionRequest :: Newtype DeleteProtectionRequest _
derive instance repGenericDeleteProtectionRequest :: Generic DeleteProtectionRequest _
instance showDeleteProtectionRequest :: Show DeleteProtectionRequest where show = genericShow
instance decodeDeleteProtectionRequest :: Decode DeleteProtectionRequest where decode = genericDecode options
instance encodeDeleteProtectionRequest :: Encode DeleteProtectionRequest where encode = genericEncode options

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
instance showDeleteProtectionResponse :: Show DeleteProtectionResponse where show = genericShow
instance decodeDeleteProtectionResponse :: Decode DeleteProtectionResponse where decode = genericDecode options
instance encodeDeleteProtectionResponse :: Encode DeleteProtectionResponse where encode = genericEncode options



newtype DeleteSubscriptionRequest = DeleteSubscriptionRequest Types.NoArguments
derive instance newtypeDeleteSubscriptionRequest :: Newtype DeleteSubscriptionRequest _
derive instance repGenericDeleteSubscriptionRequest :: Generic DeleteSubscriptionRequest _
instance showDeleteSubscriptionRequest :: Show DeleteSubscriptionRequest where show = genericShow
instance decodeDeleteSubscriptionRequest :: Decode DeleteSubscriptionRequest where decode = genericDecode options
instance encodeDeleteSubscriptionRequest :: Encode DeleteSubscriptionRequest where encode = genericEncode options



newtype DeleteSubscriptionResponse = DeleteSubscriptionResponse Types.NoArguments
derive instance newtypeDeleteSubscriptionResponse :: Newtype DeleteSubscriptionResponse _
derive instance repGenericDeleteSubscriptionResponse :: Generic DeleteSubscriptionResponse _
instance showDeleteSubscriptionResponse :: Show DeleteSubscriptionResponse where show = genericShow
instance decodeDeleteSubscriptionResponse :: Decode DeleteSubscriptionResponse where decode = genericDecode options
instance encodeDeleteSubscriptionResponse :: Encode DeleteSubscriptionResponse where encode = genericEncode options



newtype DescribeAttackRequest = DescribeAttackRequest 
  { "AttackId" :: (AttackId)
  }
derive instance newtypeDescribeAttackRequest :: Newtype DescribeAttackRequest _
derive instance repGenericDescribeAttackRequest :: Generic DescribeAttackRequest _
instance showDescribeAttackRequest :: Show DescribeAttackRequest where show = genericShow
instance decodeDescribeAttackRequest :: Decode DescribeAttackRequest where decode = genericDecode options
instance encodeDescribeAttackRequest :: Encode DescribeAttackRequest where encode = genericEncode options

-- | Constructs DescribeAttackRequest from required parameters
newDescribeAttackRequest :: AttackId -> DescribeAttackRequest
newDescribeAttackRequest _AttackId = DescribeAttackRequest { "AttackId": _AttackId }

-- | Constructs DescribeAttackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAttackRequest' :: AttackId -> ( { "AttackId" :: (AttackId) } -> {"AttackId" :: (AttackId) } ) -> DescribeAttackRequest
newDescribeAttackRequest' _AttackId customize = (DescribeAttackRequest <<< customize) { "AttackId": _AttackId }



newtype DescribeAttackResponse = DescribeAttackResponse 
  { "Attack" :: Maybe (AttackDetail)
  }
derive instance newtypeDescribeAttackResponse :: Newtype DescribeAttackResponse _
derive instance repGenericDescribeAttackResponse :: Generic DescribeAttackResponse _
instance showDescribeAttackResponse :: Show DescribeAttackResponse where show = genericShow
instance decodeDescribeAttackResponse :: Decode DescribeAttackResponse where decode = genericDecode options
instance encodeDescribeAttackResponse :: Encode DescribeAttackResponse where encode = genericEncode options

-- | Constructs DescribeAttackResponse from required parameters
newDescribeAttackResponse :: DescribeAttackResponse
newDescribeAttackResponse  = DescribeAttackResponse { "Attack": Nothing }

-- | Constructs DescribeAttackResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAttackResponse' :: ( { "Attack" :: Maybe (AttackDetail) } -> {"Attack" :: Maybe (AttackDetail) } ) -> DescribeAttackResponse
newDescribeAttackResponse'  customize = (DescribeAttackResponse <<< customize) { "Attack": Nothing }



newtype DescribeProtectionRequest = DescribeProtectionRequest 
  { "ProtectionId" :: (ProtectionId)
  }
derive instance newtypeDescribeProtectionRequest :: Newtype DescribeProtectionRequest _
derive instance repGenericDescribeProtectionRequest :: Generic DescribeProtectionRequest _
instance showDescribeProtectionRequest :: Show DescribeProtectionRequest where show = genericShow
instance decodeDescribeProtectionRequest :: Decode DescribeProtectionRequest where decode = genericDecode options
instance encodeDescribeProtectionRequest :: Encode DescribeProtectionRequest where encode = genericEncode options

-- | Constructs DescribeProtectionRequest from required parameters
newDescribeProtectionRequest :: ProtectionId -> DescribeProtectionRequest
newDescribeProtectionRequest _ProtectionId = DescribeProtectionRequest { "ProtectionId": _ProtectionId }

-- | Constructs DescribeProtectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProtectionRequest' :: ProtectionId -> ( { "ProtectionId" :: (ProtectionId) } -> {"ProtectionId" :: (ProtectionId) } ) -> DescribeProtectionRequest
newDescribeProtectionRequest' _ProtectionId customize = (DescribeProtectionRequest <<< customize) { "ProtectionId": _ProtectionId }



newtype DescribeProtectionResponse = DescribeProtectionResponse 
  { "Protection" :: Maybe (Protection)
  }
derive instance newtypeDescribeProtectionResponse :: Newtype DescribeProtectionResponse _
derive instance repGenericDescribeProtectionResponse :: Generic DescribeProtectionResponse _
instance showDescribeProtectionResponse :: Show DescribeProtectionResponse where show = genericShow
instance decodeDescribeProtectionResponse :: Decode DescribeProtectionResponse where decode = genericDecode options
instance encodeDescribeProtectionResponse :: Encode DescribeProtectionResponse where encode = genericEncode options

-- | Constructs DescribeProtectionResponse from required parameters
newDescribeProtectionResponse :: DescribeProtectionResponse
newDescribeProtectionResponse  = DescribeProtectionResponse { "Protection": Nothing }

-- | Constructs DescribeProtectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeProtectionResponse' :: ( { "Protection" :: Maybe (Protection) } -> {"Protection" :: Maybe (Protection) } ) -> DescribeProtectionResponse
newDescribeProtectionResponse'  customize = (DescribeProtectionResponse <<< customize) { "Protection": Nothing }



newtype DescribeSubscriptionRequest = DescribeSubscriptionRequest Types.NoArguments
derive instance newtypeDescribeSubscriptionRequest :: Newtype DescribeSubscriptionRequest _
derive instance repGenericDescribeSubscriptionRequest :: Generic DescribeSubscriptionRequest _
instance showDescribeSubscriptionRequest :: Show DescribeSubscriptionRequest where show = genericShow
instance decodeDescribeSubscriptionRequest :: Decode DescribeSubscriptionRequest where decode = genericDecode options
instance encodeDescribeSubscriptionRequest :: Encode DescribeSubscriptionRequest where encode = genericEncode options



newtype DescribeSubscriptionResponse = DescribeSubscriptionResponse 
  { "Subscription" :: Maybe (Subscription)
  }
derive instance newtypeDescribeSubscriptionResponse :: Newtype DescribeSubscriptionResponse _
derive instance repGenericDescribeSubscriptionResponse :: Generic DescribeSubscriptionResponse _
instance showDescribeSubscriptionResponse :: Show DescribeSubscriptionResponse where show = genericShow
instance decodeDescribeSubscriptionResponse :: Decode DescribeSubscriptionResponse where decode = genericDecode options
instance encodeDescribeSubscriptionResponse :: Encode DescribeSubscriptionResponse where encode = genericEncode options

-- | Constructs DescribeSubscriptionResponse from required parameters
newDescribeSubscriptionResponse :: DescribeSubscriptionResponse
newDescribeSubscriptionResponse  = DescribeSubscriptionResponse { "Subscription": Nothing }

-- | Constructs DescribeSubscriptionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSubscriptionResponse' :: ( { "Subscription" :: Maybe (Subscription) } -> {"Subscription" :: Maybe (Subscription) } ) -> DescribeSubscriptionResponse
newDescribeSubscriptionResponse'  customize = (DescribeSubscriptionResponse <<< customize) { "Subscription": Nothing }



newtype DurationInSeconds = DurationInSeconds Number
derive instance newtypeDurationInSeconds :: Newtype DurationInSeconds _
derive instance repGenericDurationInSeconds :: Generic DurationInSeconds _
instance showDurationInSeconds :: Show DurationInSeconds where show = genericShow
instance decodeDurationInSeconds :: Decode DurationInSeconds where decode = genericDecode options
instance encodeDurationInSeconds :: Encode DurationInSeconds where encode = genericEncode options



newtype GetSubscriptionStateRequest = GetSubscriptionStateRequest Types.NoArguments
derive instance newtypeGetSubscriptionStateRequest :: Newtype GetSubscriptionStateRequest _
derive instance repGenericGetSubscriptionStateRequest :: Generic GetSubscriptionStateRequest _
instance showGetSubscriptionStateRequest :: Show GetSubscriptionStateRequest where show = genericShow
instance decodeGetSubscriptionStateRequest :: Decode GetSubscriptionStateRequest where decode = genericDecode options
instance encodeGetSubscriptionStateRequest :: Encode GetSubscriptionStateRequest where encode = genericEncode options



newtype GetSubscriptionStateResponse = GetSubscriptionStateResponse 
  { "SubscriptionState" :: (SubscriptionState)
  }
derive instance newtypeGetSubscriptionStateResponse :: Newtype GetSubscriptionStateResponse _
derive instance repGenericGetSubscriptionStateResponse :: Generic GetSubscriptionStateResponse _
instance showGetSubscriptionStateResponse :: Show GetSubscriptionStateResponse where show = genericShow
instance decodeGetSubscriptionStateResponse :: Decode GetSubscriptionStateResponse where decode = genericDecode options
instance encodeGetSubscriptionStateResponse :: Encode GetSubscriptionStateResponse where encode = genericEncode options

-- | Constructs GetSubscriptionStateResponse from required parameters
newGetSubscriptionStateResponse :: SubscriptionState -> GetSubscriptionStateResponse
newGetSubscriptionStateResponse _SubscriptionState = GetSubscriptionStateResponse { "SubscriptionState": _SubscriptionState }

-- | Constructs GetSubscriptionStateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSubscriptionStateResponse' :: SubscriptionState -> ( { "SubscriptionState" :: (SubscriptionState) } -> {"SubscriptionState" :: (SubscriptionState) } ) -> GetSubscriptionStateResponse
newGetSubscriptionStateResponse' _SubscriptionState customize = (GetSubscriptionStateResponse <<< customize) { "SubscriptionState": _SubscriptionState }



-- | <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
newtype InternalErrorException = InternalErrorException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: InternalErrorException
newInternalErrorException  = InternalErrorException { "message": Nothing }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InternalErrorException
newInternalErrorException'  customize = (InternalErrorException <<< customize) { "message": Nothing }



-- | <p>Exception that indicates that the operation would not cause any change to occur.</p>
newtype InvalidOperationException = InvalidOperationException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidOperationException :: Newtype InvalidOperationException _
derive instance repGenericInvalidOperationException :: Generic InvalidOperationException _
instance showInvalidOperationException :: Show InvalidOperationException where show = genericShow
instance decodeInvalidOperationException :: Decode InvalidOperationException where decode = genericDecode options
instance encodeInvalidOperationException :: Encode InvalidOperationException where encode = genericEncode options

-- | Constructs InvalidOperationException from required parameters
newInvalidOperationException :: InvalidOperationException
newInvalidOperationException  = InvalidOperationException { "message": Nothing }

-- | Constructs InvalidOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidOperationException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidOperationException
newInvalidOperationException'  customize = (InvalidOperationException <<< customize) { "message": Nothing }



-- | <p>Exception that indicates that the parameters passed to the API are invalid. </p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
newtype InvalidResourceException = InvalidResourceException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeInvalidResourceException :: Newtype InvalidResourceException _
derive instance repGenericInvalidResourceException :: Generic InvalidResourceException _
instance showInvalidResourceException :: Show InvalidResourceException where show = genericShow
instance decodeInvalidResourceException :: Decode InvalidResourceException where decode = genericDecode options
instance encodeInvalidResourceException :: Encode InvalidResourceException where encode = genericEncode options

-- | Constructs InvalidResourceException from required parameters
newInvalidResourceException :: InvalidResourceException
newInvalidResourceException  = InvalidResourceException { "message": Nothing }

-- | Constructs InvalidResourceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResourceException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> InvalidResourceException
newInvalidResourceException'  customize = (InvalidResourceException <<< customize) { "message": Nothing }



newtype LimitNumber = LimitNumber Number
derive instance newtypeLimitNumber :: Newtype LimitNumber _
derive instance repGenericLimitNumber :: Generic LimitNumber _
instance showLimitNumber :: Show LimitNumber where show = genericShow
instance decodeLimitNumber :: Decode LimitNumber where decode = genericDecode options
instance encodeLimitNumber :: Encode LimitNumber where encode = genericEncode options



newtype LimitType = LimitType String
derive instance newtypeLimitType :: Newtype LimitType _
derive instance repGenericLimitType :: Generic LimitType _
instance showLimitType :: Show LimitType where show = genericShow
instance decodeLimitType :: Decode LimitType where decode = genericDecode options
instance encodeLimitType :: Encode LimitType where encode = genericEncode options



-- | <p>Exception that indicates that the operation would exceed a limit.</p> <p> <code>Type</code> is the type of limit that would be exceeded.</p> <p> <code>Limit</code> is the threshold that would be exceeded.</p>
newtype LimitsExceededException = LimitsExceededException 
  { "message" :: Maybe (ErrorMessage')
  , "Type" :: Maybe (LimitType)
  , "Limit" :: Maybe (LimitNumber)
  }
derive instance newtypeLimitsExceededException :: Newtype LimitsExceededException _
derive instance repGenericLimitsExceededException :: Generic LimitsExceededException _
instance showLimitsExceededException :: Show LimitsExceededException where show = genericShow
instance decodeLimitsExceededException :: Decode LimitsExceededException where decode = genericDecode options
instance encodeLimitsExceededException :: Encode LimitsExceededException where encode = genericEncode options

-- | Constructs LimitsExceededException from required parameters
newLimitsExceededException :: LimitsExceededException
newLimitsExceededException  = LimitsExceededException { "Limit": Nothing, "Type": Nothing, "message": Nothing }

-- | Constructs LimitsExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitsExceededException' :: ( { "message" :: Maybe (ErrorMessage') , "Type" :: Maybe (LimitType) , "Limit" :: Maybe (LimitNumber) } -> {"message" :: Maybe (ErrorMessage') , "Type" :: Maybe (LimitType) , "Limit" :: Maybe (LimitNumber) } ) -> LimitsExceededException
newLimitsExceededException'  customize = (LimitsExceededException <<< customize) { "Limit": Nothing, "Type": Nothing, "message": Nothing }



newtype ListAttacksRequest = ListAttacksRequest 
  { "ResourceArns" :: Maybe (ResourceArnFilterList)
  , "StartTime" :: Maybe (TimeRange)
  , "EndTime" :: Maybe (TimeRange)
  , "NextToken" :: Maybe (Token)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListAttacksRequest :: Newtype ListAttacksRequest _
derive instance repGenericListAttacksRequest :: Generic ListAttacksRequest _
instance showListAttacksRequest :: Show ListAttacksRequest where show = genericShow
instance decodeListAttacksRequest :: Decode ListAttacksRequest where decode = genericDecode options
instance encodeListAttacksRequest :: Encode ListAttacksRequest where encode = genericEncode options

-- | Constructs ListAttacksRequest from required parameters
newListAttacksRequest :: ListAttacksRequest
newListAttacksRequest  = ListAttacksRequest { "EndTime": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ResourceArns": Nothing, "StartTime": Nothing }

-- | Constructs ListAttacksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttacksRequest' :: ( { "ResourceArns" :: Maybe (ResourceArnFilterList) , "StartTime" :: Maybe (TimeRange) , "EndTime" :: Maybe (TimeRange) , "NextToken" :: Maybe (Token) , "MaxResults" :: Maybe (MaxResults) } -> {"ResourceArns" :: Maybe (ResourceArnFilterList) , "StartTime" :: Maybe (TimeRange) , "EndTime" :: Maybe (TimeRange) , "NextToken" :: Maybe (Token) , "MaxResults" :: Maybe (MaxResults) } ) -> ListAttacksRequest
newListAttacksRequest'  customize = (ListAttacksRequest <<< customize) { "EndTime": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "ResourceArns": Nothing, "StartTime": Nothing }



newtype ListAttacksResponse = ListAttacksResponse 
  { "AttackSummaries" :: Maybe (AttackSummaries)
  , "NextToken" :: Maybe (Token)
  }
derive instance newtypeListAttacksResponse :: Newtype ListAttacksResponse _
derive instance repGenericListAttacksResponse :: Generic ListAttacksResponse _
instance showListAttacksResponse :: Show ListAttacksResponse where show = genericShow
instance decodeListAttacksResponse :: Decode ListAttacksResponse where decode = genericDecode options
instance encodeListAttacksResponse :: Encode ListAttacksResponse where encode = genericEncode options

-- | Constructs ListAttacksResponse from required parameters
newListAttacksResponse :: ListAttacksResponse
newListAttacksResponse  = ListAttacksResponse { "AttackSummaries": Nothing, "NextToken": Nothing }

-- | Constructs ListAttacksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAttacksResponse' :: ( { "AttackSummaries" :: Maybe (AttackSummaries) , "NextToken" :: Maybe (Token) } -> {"AttackSummaries" :: Maybe (AttackSummaries) , "NextToken" :: Maybe (Token) } ) -> ListAttacksResponse
newListAttacksResponse'  customize = (ListAttacksResponse <<< customize) { "AttackSummaries": Nothing, "NextToken": Nothing }



newtype ListProtectionsRequest = ListProtectionsRequest 
  { "NextToken" :: Maybe (Token)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListProtectionsRequest :: Newtype ListProtectionsRequest _
derive instance repGenericListProtectionsRequest :: Generic ListProtectionsRequest _
instance showListProtectionsRequest :: Show ListProtectionsRequest where show = genericShow
instance decodeListProtectionsRequest :: Decode ListProtectionsRequest where decode = genericDecode options
instance encodeListProtectionsRequest :: Encode ListProtectionsRequest where encode = genericEncode options

-- | Constructs ListProtectionsRequest from required parameters
newListProtectionsRequest :: ListProtectionsRequest
newListProtectionsRequest  = ListProtectionsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListProtectionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProtectionsRequest' :: ( { "NextToken" :: Maybe (Token) , "MaxResults" :: Maybe (MaxResults) } -> {"NextToken" :: Maybe (Token) , "MaxResults" :: Maybe (MaxResults) } ) -> ListProtectionsRequest
newListProtectionsRequest'  customize = (ListProtectionsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListProtectionsResponse = ListProtectionsResponse 
  { "Protections" :: Maybe (Protections)
  , "NextToken" :: Maybe (Token)
  }
derive instance newtypeListProtectionsResponse :: Newtype ListProtectionsResponse _
derive instance repGenericListProtectionsResponse :: Generic ListProtectionsResponse _
instance showListProtectionsResponse :: Show ListProtectionsResponse where show = genericShow
instance decodeListProtectionsResponse :: Decode ListProtectionsResponse where decode = genericDecode options
instance encodeListProtectionsResponse :: Encode ListProtectionsResponse where encode = genericEncode options

-- | Constructs ListProtectionsResponse from required parameters
newListProtectionsResponse :: ListProtectionsResponse
newListProtectionsResponse  = ListProtectionsResponse { "NextToken": Nothing, "Protections": Nothing }

-- | Constructs ListProtectionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProtectionsResponse' :: ( { "Protections" :: Maybe (Protections) , "NextToken" :: Maybe (Token) } -> {"Protections" :: Maybe (Protections) , "NextToken" :: Maybe (Token) } ) -> ListProtectionsResponse
newListProtectionsResponse'  customize = (ListProtectionsResponse <<< customize) { "NextToken": Nothing, "Protections": Nothing }



-- | <p>Exception that indicates that the subscription you are trying to delete has not yet completed the 1-year commitment. You cannot delete this subscription.</p>
newtype LockedSubscriptionException = LockedSubscriptionException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeLockedSubscriptionException :: Newtype LockedSubscriptionException _
derive instance repGenericLockedSubscriptionException :: Generic LockedSubscriptionException _
instance showLockedSubscriptionException :: Show LockedSubscriptionException where show = genericShow
instance decodeLockedSubscriptionException :: Decode LockedSubscriptionException where decode = genericDecode options
instance encodeLockedSubscriptionException :: Encode LockedSubscriptionException where encode = genericEncode options

-- | Constructs LockedSubscriptionException from required parameters
newLockedSubscriptionException :: LockedSubscriptionException
newLockedSubscriptionException  = LockedSubscriptionException { "message": Nothing }

-- | Constructs LockedSubscriptionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLockedSubscriptionException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> LockedSubscriptionException
newLockedSubscriptionException'  customize = (LockedSubscriptionException <<< customize) { "message": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>The mitigation applied to a DDoS attack.</p>
newtype Mitigation = Mitigation 
  { "MitigationName" :: Maybe (String)
  }
derive instance newtypeMitigation :: Newtype Mitigation _
derive instance repGenericMitigation :: Generic Mitigation _
instance showMitigation :: Show Mitigation where show = genericShow
instance decodeMitigation :: Decode Mitigation where decode = genericDecode options
instance encodeMitigation :: Encode Mitigation where encode = genericEncode options

-- | Constructs Mitigation from required parameters
newMitigation :: Mitigation
newMitigation  = Mitigation { "MitigationName": Nothing }

-- | Constructs Mitigation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMitigation' :: ( { "MitigationName" :: Maybe (String) } -> {"MitigationName" :: Maybe (String) } ) -> Mitigation
newMitigation'  customize = (Mitigation <<< customize) { "MitigationName": Nothing }



newtype MitigationList = MitigationList (Array Mitigation)
derive instance newtypeMitigationList :: Newtype MitigationList _
derive instance repGenericMitigationList :: Generic MitigationList _
instance showMitigationList :: Show MitigationList where show = genericShow
instance decodeMitigationList :: Decode MitigationList where decode = genericDecode options
instance encodeMitigationList :: Encode MitigationList where encode = genericEncode options



-- | <p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>
newtype OptimisticLockException = OptimisticLockException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeOptimisticLockException :: Newtype OptimisticLockException _
derive instance repGenericOptimisticLockException :: Generic OptimisticLockException _
instance showOptimisticLockException :: Show OptimisticLockException where show = genericShow
instance decodeOptimisticLockException :: Decode OptimisticLockException where decode = genericDecode options
instance encodeOptimisticLockException :: Encode OptimisticLockException where encode = genericEncode options

-- | Constructs OptimisticLockException from required parameters
newOptimisticLockException :: OptimisticLockException
newOptimisticLockException  = OptimisticLockException { "message": Nothing }

-- | Constructs OptimisticLockException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptimisticLockException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> OptimisticLockException
newOptimisticLockException'  customize = (OptimisticLockException <<< customize) { "message": Nothing }



-- | <p>An object that represents a resource that is under DDoS protection.</p>
newtype Protection = Protection 
  { "Id" :: Maybe (ProtectionId)
  , "Name" :: Maybe (ProtectionName)
  , "ResourceArn" :: Maybe (ResourceArn)
  }
derive instance newtypeProtection :: Newtype Protection _
derive instance repGenericProtection :: Generic Protection _
instance showProtection :: Show Protection where show = genericShow
instance decodeProtection :: Decode Protection where decode = genericDecode options
instance encodeProtection :: Encode Protection where encode = genericEncode options

-- | Constructs Protection from required parameters
newProtection :: Protection
newProtection  = Protection { "Id": Nothing, "Name": Nothing, "ResourceArn": Nothing }

-- | Constructs Protection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProtection' :: ( { "Id" :: Maybe (ProtectionId) , "Name" :: Maybe (ProtectionName) , "ResourceArn" :: Maybe (ResourceArn) } -> {"Id" :: Maybe (ProtectionId) , "Name" :: Maybe (ProtectionName) , "ResourceArn" :: Maybe (ResourceArn) } ) -> Protection
newProtection'  customize = (Protection <<< customize) { "Id": Nothing, "Name": Nothing, "ResourceArn": Nothing }



newtype ProtectionId = ProtectionId String
derive instance newtypeProtectionId :: Newtype ProtectionId _
derive instance repGenericProtectionId :: Generic ProtectionId _
instance showProtectionId :: Show ProtectionId where show = genericShow
instance decodeProtectionId :: Decode ProtectionId where decode = genericDecode options
instance encodeProtectionId :: Encode ProtectionId where encode = genericEncode options



newtype ProtectionName = ProtectionName String
derive instance newtypeProtectionName :: Newtype ProtectionName _
derive instance repGenericProtectionName :: Generic ProtectionName _
instance showProtectionName :: Show ProtectionName where show = genericShow
instance decodeProtectionName :: Decode ProtectionName where decode = genericDecode options
instance encodeProtectionName :: Encode ProtectionName where encode = genericEncode options



newtype Protections = Protections (Array Protection)
derive instance newtypeProtections :: Newtype Protections _
derive instance repGenericProtections :: Generic Protections _
instance showProtections :: Show Protections where show = genericShow
instance decodeProtections :: Decode Protections where decode = genericDecode options
instance encodeProtections :: Encode Protections where encode = genericEncode options



-- | <p>Exception indicating the specified resource already exists.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options

-- | Constructs ResourceAlreadyExistsException from required parameters
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
newResourceAlreadyExistsException  = ResourceAlreadyExistsException { "message": Nothing }

-- | Constructs ResourceAlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceAlreadyExistsException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ResourceAlreadyExistsException
newResourceAlreadyExistsException'  customize = (ResourceAlreadyExistsException <<< customize) { "message": Nothing }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



newtype ResourceArnFilterList = ResourceArnFilterList (Array ResourceArn)
derive instance newtypeResourceArnFilterList :: Newtype ResourceArnFilterList _
derive instance repGenericResourceArnFilterList :: Generic ResourceArnFilterList _
instance showResourceArnFilterList :: Show ResourceArnFilterList where show = genericShow
instance decodeResourceArnFilterList :: Decode ResourceArnFilterList where decode = genericDecode options
instance encodeResourceArnFilterList :: Encode ResourceArnFilterList where encode = genericEncode options



-- | <p>Exception indicating the specified resource does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (ErrorMessage')
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (ErrorMessage') } -> {"message" :: Maybe (ErrorMessage') } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



-- | <p>The attack information for the specified SubResource.</p>
newtype SubResourceSummary = SubResourceSummary 
  { "Type" :: Maybe (SubResourceType)
  , "Id" :: Maybe (String)
  , "AttackVectors" :: Maybe (SummarizedAttackVectorList)
  , "Counters" :: Maybe (SummarizedCounterList)
  }
derive instance newtypeSubResourceSummary :: Newtype SubResourceSummary _
derive instance repGenericSubResourceSummary :: Generic SubResourceSummary _
instance showSubResourceSummary :: Show SubResourceSummary where show = genericShow
instance decodeSubResourceSummary :: Decode SubResourceSummary where decode = genericDecode options
instance encodeSubResourceSummary :: Encode SubResourceSummary where encode = genericEncode options

-- | Constructs SubResourceSummary from required parameters
newSubResourceSummary :: SubResourceSummary
newSubResourceSummary  = SubResourceSummary { "AttackVectors": Nothing, "Counters": Nothing, "Id": Nothing, "Type": Nothing }

-- | Constructs SubResourceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubResourceSummary' :: ( { "Type" :: Maybe (SubResourceType) , "Id" :: Maybe (String) , "AttackVectors" :: Maybe (SummarizedAttackVectorList) , "Counters" :: Maybe (SummarizedCounterList) } -> {"Type" :: Maybe (SubResourceType) , "Id" :: Maybe (String) , "AttackVectors" :: Maybe (SummarizedAttackVectorList) , "Counters" :: Maybe (SummarizedCounterList) } ) -> SubResourceSummary
newSubResourceSummary'  customize = (SubResourceSummary <<< customize) { "AttackVectors": Nothing, "Counters": Nothing, "Id": Nothing, "Type": Nothing }



newtype SubResourceSummaryList = SubResourceSummaryList (Array SubResourceSummary)
derive instance newtypeSubResourceSummaryList :: Newtype SubResourceSummaryList _
derive instance repGenericSubResourceSummaryList :: Generic SubResourceSummaryList _
instance showSubResourceSummaryList :: Show SubResourceSummaryList where show = genericShow
instance decodeSubResourceSummaryList :: Decode SubResourceSummaryList where decode = genericDecode options
instance encodeSubResourceSummaryList :: Encode SubResourceSummaryList where encode = genericEncode options



newtype SubResourceType = SubResourceType String
derive instance newtypeSubResourceType :: Newtype SubResourceType _
derive instance repGenericSubResourceType :: Generic SubResourceType _
instance showSubResourceType :: Show SubResourceType where show = genericShow
instance decodeSubResourceType :: Decode SubResourceType where decode = genericDecode options
instance encodeSubResourceType :: Encode SubResourceType where encode = genericEncode options



-- | <p>Information about the AWS Shield Advanced subscription for an account.</p>
newtype Subscription = Subscription 
  { "StartTime" :: Maybe (Types.Timestamp)
  , "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds)
  }
derive instance newtypeSubscription :: Newtype Subscription _
derive instance repGenericSubscription :: Generic Subscription _
instance showSubscription :: Show Subscription where show = genericShow
instance decodeSubscription :: Decode Subscription where decode = genericDecode options
instance encodeSubscription :: Encode Subscription where encode = genericEncode options

-- | Constructs Subscription from required parameters
newSubscription :: Subscription
newSubscription  = Subscription { "StartTime": Nothing, "TimeCommitmentInSeconds": Nothing }

-- | Constructs Subscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscription' :: ( { "StartTime" :: Maybe (Types.Timestamp) , "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds) } -> {"StartTime" :: Maybe (Types.Timestamp) , "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds) } ) -> Subscription
newSubscription'  customize = (Subscription <<< customize) { "StartTime": Nothing, "TimeCommitmentInSeconds": Nothing }



newtype SubscriptionState = SubscriptionState String
derive instance newtypeSubscriptionState :: Newtype SubscriptionState _
derive instance repGenericSubscriptionState :: Generic SubscriptionState _
instance showSubscriptionState :: Show SubscriptionState where show = genericShow
instance decodeSubscriptionState :: Decode SubscriptionState where decode = genericDecode options
instance encodeSubscriptionState :: Encode SubscriptionState where encode = genericEncode options



-- | <p>A summary of information about the attack.</p>
newtype SummarizedAttackVector = SummarizedAttackVector 
  { "VectorType" :: (String)
  , "VectorCounters" :: Maybe (SummarizedCounterList)
  }
derive instance newtypeSummarizedAttackVector :: Newtype SummarizedAttackVector _
derive instance repGenericSummarizedAttackVector :: Generic SummarizedAttackVector _
instance showSummarizedAttackVector :: Show SummarizedAttackVector where show = genericShow
instance decodeSummarizedAttackVector :: Decode SummarizedAttackVector where decode = genericDecode options
instance encodeSummarizedAttackVector :: Encode SummarizedAttackVector where encode = genericEncode options

-- | Constructs SummarizedAttackVector from required parameters
newSummarizedAttackVector :: String -> SummarizedAttackVector
newSummarizedAttackVector _VectorType = SummarizedAttackVector { "VectorType": _VectorType, "VectorCounters": Nothing }

-- | Constructs SummarizedAttackVector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSummarizedAttackVector' :: String -> ( { "VectorType" :: (String) , "VectorCounters" :: Maybe (SummarizedCounterList) } -> {"VectorType" :: (String) , "VectorCounters" :: Maybe (SummarizedCounterList) } ) -> SummarizedAttackVector
newSummarizedAttackVector' _VectorType customize = (SummarizedAttackVector <<< customize) { "VectorType": _VectorType, "VectorCounters": Nothing }



newtype SummarizedAttackVectorList = SummarizedAttackVectorList (Array SummarizedAttackVector)
derive instance newtypeSummarizedAttackVectorList :: Newtype SummarizedAttackVectorList _
derive instance repGenericSummarizedAttackVectorList :: Generic SummarizedAttackVectorList _
instance showSummarizedAttackVectorList :: Show SummarizedAttackVectorList where show = genericShow
instance decodeSummarizedAttackVectorList :: Decode SummarizedAttackVectorList where decode = genericDecode options
instance encodeSummarizedAttackVectorList :: Encode SummarizedAttackVectorList where encode = genericEncode options



-- | <p>The counter that describes a DDoS attack.</p>
newtype SummarizedCounter = SummarizedCounter 
  { "Name" :: Maybe (String)
  , "Max" :: Maybe (Number)
  , "Average" :: Maybe (Number)
  , "Sum" :: Maybe (Number)
  , "N" :: Maybe (Int)
  , "Unit" :: Maybe (String)
  }
derive instance newtypeSummarizedCounter :: Newtype SummarizedCounter _
derive instance repGenericSummarizedCounter :: Generic SummarizedCounter _
instance showSummarizedCounter :: Show SummarizedCounter where show = genericShow
instance decodeSummarizedCounter :: Decode SummarizedCounter where decode = genericDecode options
instance encodeSummarizedCounter :: Encode SummarizedCounter where encode = genericEncode options

-- | Constructs SummarizedCounter from required parameters
newSummarizedCounter :: SummarizedCounter
newSummarizedCounter  = SummarizedCounter { "Average": Nothing, "Max": Nothing, "N": Nothing, "Name": Nothing, "Sum": Nothing, "Unit": Nothing }

-- | Constructs SummarizedCounter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSummarizedCounter' :: ( { "Name" :: Maybe (String) , "Max" :: Maybe (Number) , "Average" :: Maybe (Number) , "Sum" :: Maybe (Number) , "N" :: Maybe (Int) , "Unit" :: Maybe (String) } -> {"Name" :: Maybe (String) , "Max" :: Maybe (Number) , "Average" :: Maybe (Number) , "Sum" :: Maybe (Number) , "N" :: Maybe (Int) , "Unit" :: Maybe (String) } ) -> SummarizedCounter
newSummarizedCounter'  customize = (SummarizedCounter <<< customize) { "Average": Nothing, "Max": Nothing, "N": Nothing, "Name": Nothing, "Sum": Nothing, "Unit": Nothing }



newtype SummarizedCounterList = SummarizedCounterList (Array SummarizedCounter)
derive instance newtypeSummarizedCounterList :: Newtype SummarizedCounterList _
derive instance repGenericSummarizedCounterList :: Generic SummarizedCounterList _
instance showSummarizedCounterList :: Show SummarizedCounterList where show = genericShow
instance decodeSummarizedCounterList :: Decode SummarizedCounterList where decode = genericDecode options
instance encodeSummarizedCounterList :: Encode SummarizedCounterList where encode = genericEncode options



-- | <p>The time range.</p>
newtype TimeRange = TimeRange 
  { "FromInclusive" :: Maybe (AttackTimestamp)
  , "ToExclusive" :: Maybe (AttackTimestamp)
  }
derive instance newtypeTimeRange :: Newtype TimeRange _
derive instance repGenericTimeRange :: Generic TimeRange _
instance showTimeRange :: Show TimeRange where show = genericShow
instance decodeTimeRange :: Decode TimeRange where decode = genericDecode options
instance encodeTimeRange :: Encode TimeRange where encode = genericEncode options

-- | Constructs TimeRange from required parameters
newTimeRange :: TimeRange
newTimeRange  = TimeRange { "FromInclusive": Nothing, "ToExclusive": Nothing }

-- | Constructs TimeRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimeRange' :: ( { "FromInclusive" :: Maybe (AttackTimestamp) , "ToExclusive" :: Maybe (AttackTimestamp) } -> {"FromInclusive" :: Maybe (AttackTimestamp) , "ToExclusive" :: Maybe (AttackTimestamp) } ) -> TimeRange
newTimeRange'  customize = (TimeRange <<< customize) { "FromInclusive": Nothing, "ToExclusive": Nothing }



newtype Token = Token String
derive instance newtypeToken :: Newtype Token _
derive instance repGenericToken :: Generic Token _
instance showToken :: Show Token where show = genericShow
instance decodeToken :: Decode Token where decode = genericDecode options
instance encodeToken :: Encode Token where encode = genericEncode options



newtype TopContributors = TopContributors (Array Contributor)
derive instance newtypeTopContributors :: Newtype TopContributors _
derive instance repGenericTopContributors :: Generic TopContributors _
instance showTopContributors :: Show TopContributors where show = genericShow
instance decodeTopContributors :: Decode TopContributors where decode = genericDecode options
instance encodeTopContributors :: Encode TopContributors where encode = genericEncode options



newtype Unit'' = Unit'' String
derive instance newtypeUnit'' :: Newtype Unit'' _
derive instance repGenericUnit'' :: Generic Unit'' _
instance showUnit'' :: Show Unit'' where show = genericShow
instance decodeUnit'' :: Decode Unit'' where decode = genericDecode options
instance encodeUnit'' :: Encode Unit'' where encode = genericEncode options



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options

