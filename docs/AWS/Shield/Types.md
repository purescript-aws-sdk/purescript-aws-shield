## Module AWS.Shield.Types

#### `options`

``` purescript
options :: Options
```

#### `AttackDetail`

``` purescript
newtype AttackDetail
  = AttackDetail { "AttackId" :: Maybe (AttackId), "ResourceArn" :: Maybe (ResourceArn), "SubResources" :: Maybe (SubResourceSummaryList), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackCounters" :: Maybe (SummarizedCounterList), "AttackProperties" :: Maybe (AttackProperties), "Mitigations" :: Maybe (MitigationList) }
```

<p>The details of a DDoS attack.</p>

##### Instances
``` purescript
Newtype AttackDetail _
Generic AttackDetail _
Show AttackDetail
Decode AttackDetail
Encode AttackDetail
```

#### `newAttackDetail`

``` purescript
newAttackDetail :: AttackDetail
```

Constructs AttackDetail from required parameters

#### `newAttackDetail'`

``` purescript
newAttackDetail' :: ({ "AttackId" :: Maybe (AttackId), "ResourceArn" :: Maybe (ResourceArn), "SubResources" :: Maybe (SubResourceSummaryList), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackCounters" :: Maybe (SummarizedCounterList), "AttackProperties" :: Maybe (AttackProperties), "Mitigations" :: Maybe (MitigationList) } -> { "AttackId" :: Maybe (AttackId), "ResourceArn" :: Maybe (ResourceArn), "SubResources" :: Maybe (SubResourceSummaryList), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackCounters" :: Maybe (SummarizedCounterList), "AttackProperties" :: Maybe (AttackProperties), "Mitigations" :: Maybe (MitigationList) }) -> AttackDetail
```

Constructs AttackDetail's fields from required parameters

#### `AttackId`

``` purescript
newtype AttackId
  = AttackId String
```

##### Instances
``` purescript
Newtype AttackId _
Generic AttackId _
Show AttackId
Decode AttackId
Encode AttackId
```

#### `AttackLayer`

``` purescript
newtype AttackLayer
  = AttackLayer String
```

##### Instances
``` purescript
Newtype AttackLayer _
Generic AttackLayer _
Show AttackLayer
Decode AttackLayer
Encode AttackLayer
```

#### `AttackProperties`

``` purescript
newtype AttackProperties
  = AttackProperties (Array AttackProperty)
```

##### Instances
``` purescript
Newtype AttackProperties _
Generic AttackProperties _
Show AttackProperties
Decode AttackProperties
Encode AttackProperties
```

#### `AttackProperty`

``` purescript
newtype AttackProperty
  = AttackProperty { "AttackLayer" :: Maybe (AttackLayer), "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier), "TopContributors" :: Maybe (TopContributors), "Unit" :: Maybe (Unit''), "Total" :: Maybe (Number) }
```

<p>Details of the described attack.</p>

##### Instances
``` purescript
Newtype AttackProperty _
Generic AttackProperty _
Show AttackProperty
Decode AttackProperty
Encode AttackProperty
```

#### `newAttackProperty`

``` purescript
newAttackProperty :: AttackProperty
```

Constructs AttackProperty from required parameters

#### `newAttackProperty'`

``` purescript
newAttackProperty' :: ({ "AttackLayer" :: Maybe (AttackLayer), "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier), "TopContributors" :: Maybe (TopContributors), "Unit" :: Maybe (Unit''), "Total" :: Maybe (Number) } -> { "AttackLayer" :: Maybe (AttackLayer), "AttackPropertyIdentifier" :: Maybe (AttackPropertyIdentifier), "TopContributors" :: Maybe (TopContributors), "Unit" :: Maybe (Unit''), "Total" :: Maybe (Number) }) -> AttackProperty
```

Constructs AttackProperty's fields from required parameters

#### `AttackPropertyIdentifier`

``` purescript
newtype AttackPropertyIdentifier
  = AttackPropertyIdentifier String
```

##### Instances
``` purescript
Newtype AttackPropertyIdentifier _
Generic AttackPropertyIdentifier _
Show AttackPropertyIdentifier
Decode AttackPropertyIdentifier
Encode AttackPropertyIdentifier
```

#### `AttackSummaries`

``` purescript
newtype AttackSummaries
  = AttackSummaries (Array AttackSummary)
```

##### Instances
``` purescript
Newtype AttackSummaries _
Generic AttackSummaries _
Show AttackSummaries
Decode AttackSummaries
Encode AttackSummaries
```

#### `AttackSummary`

``` purescript
newtype AttackSummary
  = AttackSummary { "AttackId" :: Maybe (String), "ResourceArn" :: Maybe (String), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackVectors" :: Maybe (AttackVectorDescriptionList) }
```

<p>Summarizes all DDoS attacks for a specified time period.</p>

##### Instances
``` purescript
Newtype AttackSummary _
Generic AttackSummary _
Show AttackSummary
Decode AttackSummary
Encode AttackSummary
```

#### `newAttackSummary`

``` purescript
newAttackSummary :: AttackSummary
```

Constructs AttackSummary from required parameters

#### `newAttackSummary'`

``` purescript
newAttackSummary' :: ({ "AttackId" :: Maybe (String), "ResourceArn" :: Maybe (String), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackVectors" :: Maybe (AttackVectorDescriptionList) } -> { "AttackId" :: Maybe (String), "ResourceArn" :: Maybe (String), "StartTime" :: Maybe (AttackTimestamp), "EndTime" :: Maybe (AttackTimestamp), "AttackVectors" :: Maybe (AttackVectorDescriptionList) }) -> AttackSummary
```

Constructs AttackSummary's fields from required parameters

#### `AttackTimestamp`

``` purescript
newtype AttackTimestamp
  = AttackTimestamp Timestamp
```

##### Instances
``` purescript
Newtype AttackTimestamp _
Generic AttackTimestamp _
Show AttackTimestamp
Decode AttackTimestamp
Encode AttackTimestamp
```

#### `AttackVectorDescription`

``` purescript
newtype AttackVectorDescription
  = AttackVectorDescription { "VectorType" :: String }
```

<p>Describes the attack.</p>

##### Instances
``` purescript
Newtype AttackVectorDescription _
Generic AttackVectorDescription _
Show AttackVectorDescription
Decode AttackVectorDescription
Encode AttackVectorDescription
```

#### `newAttackVectorDescription`

``` purescript
newAttackVectorDescription :: String -> AttackVectorDescription
```

Constructs AttackVectorDescription from required parameters

#### `newAttackVectorDescription'`

``` purescript
newAttackVectorDescription' :: String -> ({ "VectorType" :: String } -> { "VectorType" :: String }) -> AttackVectorDescription
```

Constructs AttackVectorDescription's fields from required parameters

#### `AttackVectorDescriptionList`

``` purescript
newtype AttackVectorDescriptionList
  = AttackVectorDescriptionList (Array AttackVectorDescription)
```

##### Instances
``` purescript
Newtype AttackVectorDescriptionList _
Generic AttackVectorDescriptionList _
Show AttackVectorDescriptionList
Decode AttackVectorDescriptionList
Encode AttackVectorDescriptionList
```

#### `Contributor`

``` purescript
newtype Contributor
  = Contributor { "Name" :: Maybe (String), "Value" :: Maybe (Number) }
```

<p>A contributor to the attack and their contribution.</p>

##### Instances
``` purescript
Newtype Contributor _
Generic Contributor _
Show Contributor
Decode Contributor
Encode Contributor
```

#### `newContributor`

``` purescript
newContributor :: Contributor
```

Constructs Contributor from required parameters

#### `newContributor'`

``` purescript
newContributor' :: ({ "Name" :: Maybe (String), "Value" :: Maybe (Number) } -> { "Name" :: Maybe (String), "Value" :: Maybe (Number) }) -> Contributor
```

Constructs Contributor's fields from required parameters

#### `CreateProtectionRequest`

``` purescript
newtype CreateProtectionRequest
  = CreateProtectionRequest { "Name" :: ProtectionName, "ResourceArn" :: ResourceArn }
```

##### Instances
``` purescript
Newtype CreateProtectionRequest _
Generic CreateProtectionRequest _
Show CreateProtectionRequest
Decode CreateProtectionRequest
Encode CreateProtectionRequest
```

#### `newCreateProtectionRequest`

``` purescript
newCreateProtectionRequest :: ProtectionName -> ResourceArn -> CreateProtectionRequest
```

Constructs CreateProtectionRequest from required parameters

#### `newCreateProtectionRequest'`

``` purescript
newCreateProtectionRequest' :: ProtectionName -> ResourceArn -> ({ "Name" :: ProtectionName, "ResourceArn" :: ResourceArn } -> { "Name" :: ProtectionName, "ResourceArn" :: ResourceArn }) -> CreateProtectionRequest
```

Constructs CreateProtectionRequest's fields from required parameters

#### `CreateProtectionResponse`

``` purescript
newtype CreateProtectionResponse
  = CreateProtectionResponse { "ProtectionId" :: Maybe (ProtectionId) }
```

##### Instances
``` purescript
Newtype CreateProtectionResponse _
Generic CreateProtectionResponse _
Show CreateProtectionResponse
Decode CreateProtectionResponse
Encode CreateProtectionResponse
```

#### `newCreateProtectionResponse`

``` purescript
newCreateProtectionResponse :: CreateProtectionResponse
```

Constructs CreateProtectionResponse from required parameters

#### `newCreateProtectionResponse'`

``` purescript
newCreateProtectionResponse' :: ({ "ProtectionId" :: Maybe (ProtectionId) } -> { "ProtectionId" :: Maybe (ProtectionId) }) -> CreateProtectionResponse
```

Constructs CreateProtectionResponse's fields from required parameters

#### `CreateSubscriptionRequest`

``` purescript
newtype CreateSubscriptionRequest
  = CreateSubscriptionRequest NoArguments
```

##### Instances
``` purescript
Newtype CreateSubscriptionRequest _
Generic CreateSubscriptionRequest _
Show CreateSubscriptionRequest
Decode CreateSubscriptionRequest
Encode CreateSubscriptionRequest
```

#### `CreateSubscriptionResponse`

``` purescript
newtype CreateSubscriptionResponse
  = CreateSubscriptionResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateSubscriptionResponse _
Generic CreateSubscriptionResponse _
Show CreateSubscriptionResponse
Decode CreateSubscriptionResponse
Encode CreateSubscriptionResponse
```

#### `DeleteProtectionRequest`

``` purescript
newtype DeleteProtectionRequest
  = DeleteProtectionRequest { "ProtectionId" :: ProtectionId }
```

##### Instances
``` purescript
Newtype DeleteProtectionRequest _
Generic DeleteProtectionRequest _
Show DeleteProtectionRequest
Decode DeleteProtectionRequest
Encode DeleteProtectionRequest
```

#### `newDeleteProtectionRequest`

``` purescript
newDeleteProtectionRequest :: ProtectionId -> DeleteProtectionRequest
```

Constructs DeleteProtectionRequest from required parameters

#### `newDeleteProtectionRequest'`

``` purescript
newDeleteProtectionRequest' :: ProtectionId -> ({ "ProtectionId" :: ProtectionId } -> { "ProtectionId" :: ProtectionId }) -> DeleteProtectionRequest
```

Constructs DeleteProtectionRequest's fields from required parameters

#### `DeleteProtectionResponse`

``` purescript
newtype DeleteProtectionResponse
  = DeleteProtectionResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteProtectionResponse _
Generic DeleteProtectionResponse _
Show DeleteProtectionResponse
Decode DeleteProtectionResponse
Encode DeleteProtectionResponse
```

#### `DeleteSubscriptionRequest`

``` purescript
newtype DeleteSubscriptionRequest
  = DeleteSubscriptionRequest NoArguments
```

##### Instances
``` purescript
Newtype DeleteSubscriptionRequest _
Generic DeleteSubscriptionRequest _
Show DeleteSubscriptionRequest
Decode DeleteSubscriptionRequest
Encode DeleteSubscriptionRequest
```

#### `DeleteSubscriptionResponse`

``` purescript
newtype DeleteSubscriptionResponse
  = DeleteSubscriptionResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteSubscriptionResponse _
Generic DeleteSubscriptionResponse _
Show DeleteSubscriptionResponse
Decode DeleteSubscriptionResponse
Encode DeleteSubscriptionResponse
```

#### `DescribeAttackRequest`

``` purescript
newtype DescribeAttackRequest
  = DescribeAttackRequest { "AttackId" :: AttackId }
```

##### Instances
``` purescript
Newtype DescribeAttackRequest _
Generic DescribeAttackRequest _
Show DescribeAttackRequest
Decode DescribeAttackRequest
Encode DescribeAttackRequest
```

#### `newDescribeAttackRequest`

``` purescript
newDescribeAttackRequest :: AttackId -> DescribeAttackRequest
```

Constructs DescribeAttackRequest from required parameters

#### `newDescribeAttackRequest'`

``` purescript
newDescribeAttackRequest' :: AttackId -> ({ "AttackId" :: AttackId } -> { "AttackId" :: AttackId }) -> DescribeAttackRequest
```

Constructs DescribeAttackRequest's fields from required parameters

#### `DescribeAttackResponse`

``` purescript
newtype DescribeAttackResponse
  = DescribeAttackResponse { "Attack" :: Maybe (AttackDetail) }
```

##### Instances
``` purescript
Newtype DescribeAttackResponse _
Generic DescribeAttackResponse _
Show DescribeAttackResponse
Decode DescribeAttackResponse
Encode DescribeAttackResponse
```

#### `newDescribeAttackResponse`

``` purescript
newDescribeAttackResponse :: DescribeAttackResponse
```

Constructs DescribeAttackResponse from required parameters

#### `newDescribeAttackResponse'`

``` purescript
newDescribeAttackResponse' :: ({ "Attack" :: Maybe (AttackDetail) } -> { "Attack" :: Maybe (AttackDetail) }) -> DescribeAttackResponse
```

Constructs DescribeAttackResponse's fields from required parameters

#### `DescribeProtectionRequest`

``` purescript
newtype DescribeProtectionRequest
  = DescribeProtectionRequest { "ProtectionId" :: ProtectionId }
```

##### Instances
``` purescript
Newtype DescribeProtectionRequest _
Generic DescribeProtectionRequest _
Show DescribeProtectionRequest
Decode DescribeProtectionRequest
Encode DescribeProtectionRequest
```

#### `newDescribeProtectionRequest`

``` purescript
newDescribeProtectionRequest :: ProtectionId -> DescribeProtectionRequest
```

Constructs DescribeProtectionRequest from required parameters

#### `newDescribeProtectionRequest'`

``` purescript
newDescribeProtectionRequest' :: ProtectionId -> ({ "ProtectionId" :: ProtectionId } -> { "ProtectionId" :: ProtectionId }) -> DescribeProtectionRequest
```

Constructs DescribeProtectionRequest's fields from required parameters

#### `DescribeProtectionResponse`

``` purescript
newtype DescribeProtectionResponse
  = DescribeProtectionResponse { "Protection" :: Maybe (Protection) }
```

##### Instances
``` purescript
Newtype DescribeProtectionResponse _
Generic DescribeProtectionResponse _
Show DescribeProtectionResponse
Decode DescribeProtectionResponse
Encode DescribeProtectionResponse
```

#### `newDescribeProtectionResponse`

``` purescript
newDescribeProtectionResponse :: DescribeProtectionResponse
```

Constructs DescribeProtectionResponse from required parameters

#### `newDescribeProtectionResponse'`

``` purescript
newDescribeProtectionResponse' :: ({ "Protection" :: Maybe (Protection) } -> { "Protection" :: Maybe (Protection) }) -> DescribeProtectionResponse
```

Constructs DescribeProtectionResponse's fields from required parameters

#### `DescribeSubscriptionRequest`

``` purescript
newtype DescribeSubscriptionRequest
  = DescribeSubscriptionRequest NoArguments
```

##### Instances
``` purescript
Newtype DescribeSubscriptionRequest _
Generic DescribeSubscriptionRequest _
Show DescribeSubscriptionRequest
Decode DescribeSubscriptionRequest
Encode DescribeSubscriptionRequest
```

#### `DescribeSubscriptionResponse`

``` purescript
newtype DescribeSubscriptionResponse
  = DescribeSubscriptionResponse { "Subscription" :: Maybe (Subscription) }
```

##### Instances
``` purescript
Newtype DescribeSubscriptionResponse _
Generic DescribeSubscriptionResponse _
Show DescribeSubscriptionResponse
Decode DescribeSubscriptionResponse
Encode DescribeSubscriptionResponse
```

#### `newDescribeSubscriptionResponse`

``` purescript
newDescribeSubscriptionResponse :: DescribeSubscriptionResponse
```

Constructs DescribeSubscriptionResponse from required parameters

#### `newDescribeSubscriptionResponse'`

``` purescript
newDescribeSubscriptionResponse' :: ({ "Subscription" :: Maybe (Subscription) } -> { "Subscription" :: Maybe (Subscription) }) -> DescribeSubscriptionResponse
```

Constructs DescribeSubscriptionResponse's fields from required parameters

#### `DurationInSeconds`

``` purescript
newtype DurationInSeconds
  = DurationInSeconds Number
```

##### Instances
``` purescript
Newtype DurationInSeconds _
Generic DurationInSeconds _
Show DurationInSeconds
Decode DurationInSeconds
Encode DurationInSeconds
```

#### `GetSubscriptionStateRequest`

``` purescript
newtype GetSubscriptionStateRequest
  = GetSubscriptionStateRequest NoArguments
```

##### Instances
``` purescript
Newtype GetSubscriptionStateRequest _
Generic GetSubscriptionStateRequest _
Show GetSubscriptionStateRequest
Decode GetSubscriptionStateRequest
Encode GetSubscriptionStateRequest
```

#### `GetSubscriptionStateResponse`

``` purescript
newtype GetSubscriptionStateResponse
  = GetSubscriptionStateResponse { "SubscriptionState" :: SubscriptionState }
```

##### Instances
``` purescript
Newtype GetSubscriptionStateResponse _
Generic GetSubscriptionStateResponse _
Show GetSubscriptionStateResponse
Decode GetSubscriptionStateResponse
Encode GetSubscriptionStateResponse
```

#### `newGetSubscriptionStateResponse`

``` purescript
newGetSubscriptionStateResponse :: SubscriptionState -> GetSubscriptionStateResponse
```

Constructs GetSubscriptionStateResponse from required parameters

#### `newGetSubscriptionStateResponse'`

``` purescript
newGetSubscriptionStateResponse' :: SubscriptionState -> ({ "SubscriptionState" :: SubscriptionState } -> { "SubscriptionState" :: SubscriptionState }) -> GetSubscriptionStateResponse
```

Constructs GetSubscriptionStateResponse's fields from required parameters

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidOperationException`

``` purescript
newtype InvalidOperationException
  = InvalidOperationException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that the operation would not cause any change to occur.</p>

##### Instances
``` purescript
Newtype InvalidOperationException _
Generic InvalidOperationException _
Show InvalidOperationException
Decode InvalidOperationException
Encode InvalidOperationException
```

#### `newInvalidOperationException`

``` purescript
newInvalidOperationException :: InvalidOperationException
```

Constructs InvalidOperationException from required parameters

#### `newInvalidOperationException'`

``` purescript
newInvalidOperationException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InvalidOperationException
```

Constructs InvalidOperationException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that the parameters passed to the API are invalid. </p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidResourceException`

``` purescript
newtype InvalidResourceException
  = InvalidResourceException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>

##### Instances
``` purescript
Newtype InvalidResourceException _
Generic InvalidResourceException _
Show InvalidResourceException
Decode InvalidResourceException
Encode InvalidResourceException
```

#### `newInvalidResourceException`

``` purescript
newInvalidResourceException :: InvalidResourceException
```

Constructs InvalidResourceException from required parameters

#### `newInvalidResourceException'`

``` purescript
newInvalidResourceException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> InvalidResourceException
```

Constructs InvalidResourceException's fields from required parameters

#### `LimitNumber`

``` purescript
newtype LimitNumber
  = LimitNumber Number
```

##### Instances
``` purescript
Newtype LimitNumber _
Generic LimitNumber _
Show LimitNumber
Decode LimitNumber
Encode LimitNumber
```

#### `LimitType`

``` purescript
newtype LimitType
  = LimitType String
```

##### Instances
``` purescript
Newtype LimitType _
Generic LimitType _
Show LimitType
Decode LimitType
Encode LimitType
```

#### `LimitsExceededException`

``` purescript
newtype LimitsExceededException
  = LimitsExceededException { message :: Maybe (ErrorMessage'), "Type" :: Maybe (LimitType), "Limit" :: Maybe (LimitNumber) }
```

<p>Exception that indicates that the operation would exceed a limit.</p> <p> <code>Type</code> is the type of limit that would be exceeded.</p> <p> <code>Limit</code> is the threshold that would be exceeded.</p>

##### Instances
``` purescript
Newtype LimitsExceededException _
Generic LimitsExceededException _
Show LimitsExceededException
Decode LimitsExceededException
Encode LimitsExceededException
```

#### `newLimitsExceededException`

``` purescript
newLimitsExceededException :: LimitsExceededException
```

Constructs LimitsExceededException from required parameters

#### `newLimitsExceededException'`

``` purescript
newLimitsExceededException' :: ({ message :: Maybe (ErrorMessage'), "Type" :: Maybe (LimitType), "Limit" :: Maybe (LimitNumber) } -> { message :: Maybe (ErrorMessage'), "Type" :: Maybe (LimitType), "Limit" :: Maybe (LimitNumber) }) -> LimitsExceededException
```

Constructs LimitsExceededException's fields from required parameters

#### `ListAttacksRequest`

``` purescript
newtype ListAttacksRequest
  = ListAttacksRequest { "ResourceArns" :: Maybe (ResourceArnFilterList), "StartTime" :: Maybe (TimeRange), "EndTime" :: Maybe (TimeRange), "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListAttacksRequest _
Generic ListAttacksRequest _
Show ListAttacksRequest
Decode ListAttacksRequest
Encode ListAttacksRequest
```

#### `newListAttacksRequest`

``` purescript
newListAttacksRequest :: ListAttacksRequest
```

Constructs ListAttacksRequest from required parameters

#### `newListAttacksRequest'`

``` purescript
newListAttacksRequest' :: ({ "ResourceArns" :: Maybe (ResourceArnFilterList), "StartTime" :: Maybe (TimeRange), "EndTime" :: Maybe (TimeRange), "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) } -> { "ResourceArns" :: Maybe (ResourceArnFilterList), "StartTime" :: Maybe (TimeRange), "EndTime" :: Maybe (TimeRange), "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }) -> ListAttacksRequest
```

Constructs ListAttacksRequest's fields from required parameters

#### `ListAttacksResponse`

``` purescript
newtype ListAttacksResponse
  = ListAttacksResponse { "AttackSummaries" :: Maybe (AttackSummaries), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListAttacksResponse _
Generic ListAttacksResponse _
Show ListAttacksResponse
Decode ListAttacksResponse
Encode ListAttacksResponse
```

#### `newListAttacksResponse`

``` purescript
newListAttacksResponse :: ListAttacksResponse
```

Constructs ListAttacksResponse from required parameters

#### `newListAttacksResponse'`

``` purescript
newListAttacksResponse' :: ({ "AttackSummaries" :: Maybe (AttackSummaries), "NextToken" :: Maybe (Token) } -> { "AttackSummaries" :: Maybe (AttackSummaries), "NextToken" :: Maybe (Token) }) -> ListAttacksResponse
```

Constructs ListAttacksResponse's fields from required parameters

#### `ListProtectionsRequest`

``` purescript
newtype ListProtectionsRequest
  = ListProtectionsRequest { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListProtectionsRequest _
Generic ListProtectionsRequest _
Show ListProtectionsRequest
Decode ListProtectionsRequest
Encode ListProtectionsRequest
```

#### `newListProtectionsRequest`

``` purescript
newListProtectionsRequest :: ListProtectionsRequest
```

Constructs ListProtectionsRequest from required parameters

#### `newListProtectionsRequest'`

``` purescript
newListProtectionsRequest' :: ({ "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (Token), "MaxResults" :: Maybe (MaxResults) }) -> ListProtectionsRequest
```

Constructs ListProtectionsRequest's fields from required parameters

#### `ListProtectionsResponse`

``` purescript
newtype ListProtectionsResponse
  = ListProtectionsResponse { "Protections" :: Maybe (Protections), "NextToken" :: Maybe (Token) }
```

##### Instances
``` purescript
Newtype ListProtectionsResponse _
Generic ListProtectionsResponse _
Show ListProtectionsResponse
Decode ListProtectionsResponse
Encode ListProtectionsResponse
```

#### `newListProtectionsResponse`

``` purescript
newListProtectionsResponse :: ListProtectionsResponse
```

Constructs ListProtectionsResponse from required parameters

#### `newListProtectionsResponse'`

``` purescript
newListProtectionsResponse' :: ({ "Protections" :: Maybe (Protections), "NextToken" :: Maybe (Token) } -> { "Protections" :: Maybe (Protections), "NextToken" :: Maybe (Token) }) -> ListProtectionsResponse
```

Constructs ListProtectionsResponse's fields from required parameters

#### `LockedSubscriptionException`

``` purescript
newtype LockedSubscriptionException
  = LockedSubscriptionException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that the subscription you are trying to delete has not yet completed the 1-year commitment. You cannot delete this subscription.</p>

##### Instances
``` purescript
Newtype LockedSubscriptionException _
Generic LockedSubscriptionException _
Show LockedSubscriptionException
Decode LockedSubscriptionException
Encode LockedSubscriptionException
```

#### `newLockedSubscriptionException`

``` purescript
newLockedSubscriptionException :: LockedSubscriptionException
```

Constructs LockedSubscriptionException from required parameters

#### `newLockedSubscriptionException'`

``` purescript
newLockedSubscriptionException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> LockedSubscriptionException
```

Constructs LockedSubscriptionException's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Mitigation`

``` purescript
newtype Mitigation
  = Mitigation { "MitigationName" :: Maybe (String) }
```

<p>The mitigation applied to a DDoS attack.</p>

##### Instances
``` purescript
Newtype Mitigation _
Generic Mitigation _
Show Mitigation
Decode Mitigation
Encode Mitigation
```

#### `newMitigation`

``` purescript
newMitigation :: Mitigation
```

Constructs Mitigation from required parameters

#### `newMitigation'`

``` purescript
newMitigation' :: ({ "MitigationName" :: Maybe (String) } -> { "MitigationName" :: Maybe (String) }) -> Mitigation
```

Constructs Mitigation's fields from required parameters

#### `MitigationList`

``` purescript
newtype MitigationList
  = MitigationList (Array Mitigation)
```

##### Instances
``` purescript
Newtype MitigationList _
Generic MitigationList _
Show MitigationList
Decode MitigationList
Encode MitigationList
```

#### `OptimisticLockException`

``` purescript
newtype OptimisticLockException
  = OptimisticLockException { message :: Maybe (ErrorMessage') }
```

<p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>

##### Instances
``` purescript
Newtype OptimisticLockException _
Generic OptimisticLockException _
Show OptimisticLockException
Decode OptimisticLockException
Encode OptimisticLockException
```

#### `newOptimisticLockException`

``` purescript
newOptimisticLockException :: OptimisticLockException
```

Constructs OptimisticLockException from required parameters

#### `newOptimisticLockException'`

``` purescript
newOptimisticLockException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> OptimisticLockException
```

Constructs OptimisticLockException's fields from required parameters

#### `Protection`

``` purescript
newtype Protection
  = Protection { "Id" :: Maybe (ProtectionId), "Name" :: Maybe (ProtectionName), "ResourceArn" :: Maybe (ResourceArn) }
```

<p>An object that represents a resource that is under DDoS protection.</p>

##### Instances
``` purescript
Newtype Protection _
Generic Protection _
Show Protection
Decode Protection
Encode Protection
```

#### `newProtection`

``` purescript
newProtection :: Protection
```

Constructs Protection from required parameters

#### `newProtection'`

``` purescript
newProtection' :: ({ "Id" :: Maybe (ProtectionId), "Name" :: Maybe (ProtectionName), "ResourceArn" :: Maybe (ResourceArn) } -> { "Id" :: Maybe (ProtectionId), "Name" :: Maybe (ProtectionName), "ResourceArn" :: Maybe (ResourceArn) }) -> Protection
```

Constructs Protection's fields from required parameters

#### `ProtectionId`

``` purescript
newtype ProtectionId
  = ProtectionId String
```

##### Instances
``` purescript
Newtype ProtectionId _
Generic ProtectionId _
Show ProtectionId
Decode ProtectionId
Encode ProtectionId
```

#### `ProtectionName`

``` purescript
newtype ProtectionName
  = ProtectionName String
```

##### Instances
``` purescript
Newtype ProtectionName _
Generic ProtectionName _
Show ProtectionName
Decode ProtectionName
Encode ProtectionName
```

#### `Protections`

``` purescript
newtype Protections
  = Protections (Array Protection)
```

##### Instances
``` purescript
Newtype Protections _
Generic Protections _
Show Protections
Decode Protections
Encode Protections
```

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException { message :: Maybe (ErrorMessage') }
```

<p>Exception indicating the specified resource already exists.</p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `newResourceAlreadyExistsException`

``` purescript
newResourceAlreadyExistsException :: ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException from required parameters

#### `newResourceAlreadyExistsException'`

``` purescript
newResourceAlreadyExistsException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> ResourceAlreadyExistsException
```

Constructs ResourceAlreadyExistsException's fields from required parameters

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceArnFilterList`

``` purescript
newtype ResourceArnFilterList
  = ResourceArnFilterList (Array ResourceArn)
```

##### Instances
``` purescript
Newtype ResourceArnFilterList _
Generic ResourceArnFilterList _
Show ResourceArnFilterList
Decode ResourceArnFilterList
Encode ResourceArnFilterList
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: Maybe (ErrorMessage') }
```

<p>Exception indicating the specified resource does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: Maybe (ErrorMessage') } -> { message :: Maybe (ErrorMessage') }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `SubResourceSummary`

``` purescript
newtype SubResourceSummary
  = SubResourceSummary { "Type" :: Maybe (SubResourceType), "Id" :: Maybe (String), "AttackVectors" :: Maybe (SummarizedAttackVectorList), "Counters" :: Maybe (SummarizedCounterList) }
```

<p>The attack information for the specified SubResource.</p>

##### Instances
``` purescript
Newtype SubResourceSummary _
Generic SubResourceSummary _
Show SubResourceSummary
Decode SubResourceSummary
Encode SubResourceSummary
```

#### `newSubResourceSummary`

``` purescript
newSubResourceSummary :: SubResourceSummary
```

Constructs SubResourceSummary from required parameters

#### `newSubResourceSummary'`

``` purescript
newSubResourceSummary' :: ({ "Type" :: Maybe (SubResourceType), "Id" :: Maybe (String), "AttackVectors" :: Maybe (SummarizedAttackVectorList), "Counters" :: Maybe (SummarizedCounterList) } -> { "Type" :: Maybe (SubResourceType), "Id" :: Maybe (String), "AttackVectors" :: Maybe (SummarizedAttackVectorList), "Counters" :: Maybe (SummarizedCounterList) }) -> SubResourceSummary
```

Constructs SubResourceSummary's fields from required parameters

#### `SubResourceSummaryList`

``` purescript
newtype SubResourceSummaryList
  = SubResourceSummaryList (Array SubResourceSummary)
```

##### Instances
``` purescript
Newtype SubResourceSummaryList _
Generic SubResourceSummaryList _
Show SubResourceSummaryList
Decode SubResourceSummaryList
Encode SubResourceSummaryList
```

#### `SubResourceType`

``` purescript
newtype SubResourceType
  = SubResourceType String
```

##### Instances
``` purescript
Newtype SubResourceType _
Generic SubResourceType _
Show SubResourceType
Decode SubResourceType
Encode SubResourceType
```

#### `Subscription`

``` purescript
newtype Subscription
  = Subscription { "StartTime" :: Maybe (Timestamp), "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds) }
```

<p>Information about the AWS Shield Advanced subscription for an account.</p>

##### Instances
``` purescript
Newtype Subscription _
Generic Subscription _
Show Subscription
Decode Subscription
Encode Subscription
```

#### `newSubscription`

``` purescript
newSubscription :: Subscription
```

Constructs Subscription from required parameters

#### `newSubscription'`

``` purescript
newSubscription' :: ({ "StartTime" :: Maybe (Timestamp), "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds) } -> { "StartTime" :: Maybe (Timestamp), "TimeCommitmentInSeconds" :: Maybe (DurationInSeconds) }) -> Subscription
```

Constructs Subscription's fields from required parameters

#### `SubscriptionState`

``` purescript
newtype SubscriptionState
  = SubscriptionState String
```

##### Instances
``` purescript
Newtype SubscriptionState _
Generic SubscriptionState _
Show SubscriptionState
Decode SubscriptionState
Encode SubscriptionState
```

#### `SummarizedAttackVector`

``` purescript
newtype SummarizedAttackVector
  = SummarizedAttackVector { "VectorType" :: String, "VectorCounters" :: Maybe (SummarizedCounterList) }
```

<p>A summary of information about the attack.</p>

##### Instances
``` purescript
Newtype SummarizedAttackVector _
Generic SummarizedAttackVector _
Show SummarizedAttackVector
Decode SummarizedAttackVector
Encode SummarizedAttackVector
```

#### `newSummarizedAttackVector`

``` purescript
newSummarizedAttackVector :: String -> SummarizedAttackVector
```

Constructs SummarizedAttackVector from required parameters

#### `newSummarizedAttackVector'`

``` purescript
newSummarizedAttackVector' :: String -> ({ "VectorType" :: String, "VectorCounters" :: Maybe (SummarizedCounterList) } -> { "VectorType" :: String, "VectorCounters" :: Maybe (SummarizedCounterList) }) -> SummarizedAttackVector
```

Constructs SummarizedAttackVector's fields from required parameters

#### `SummarizedAttackVectorList`

``` purescript
newtype SummarizedAttackVectorList
  = SummarizedAttackVectorList (Array SummarizedAttackVector)
```

##### Instances
``` purescript
Newtype SummarizedAttackVectorList _
Generic SummarizedAttackVectorList _
Show SummarizedAttackVectorList
Decode SummarizedAttackVectorList
Encode SummarizedAttackVectorList
```

#### `SummarizedCounter`

``` purescript
newtype SummarizedCounter
  = SummarizedCounter { "Name" :: Maybe (String), "Max" :: Maybe (Number), "Average" :: Maybe (Number), "Sum" :: Maybe (Number), "N" :: Maybe (Int), "Unit" :: Maybe (String) }
```

<p>The counter that describes a DDoS attack.</p>

##### Instances
``` purescript
Newtype SummarizedCounter _
Generic SummarizedCounter _
Show SummarizedCounter
Decode SummarizedCounter
Encode SummarizedCounter
```

#### `newSummarizedCounter`

``` purescript
newSummarizedCounter :: SummarizedCounter
```

Constructs SummarizedCounter from required parameters

#### `newSummarizedCounter'`

``` purescript
newSummarizedCounter' :: ({ "Name" :: Maybe (String), "Max" :: Maybe (Number), "Average" :: Maybe (Number), "Sum" :: Maybe (Number), "N" :: Maybe (Int), "Unit" :: Maybe (String) } -> { "Name" :: Maybe (String), "Max" :: Maybe (Number), "Average" :: Maybe (Number), "Sum" :: Maybe (Number), "N" :: Maybe (Int), "Unit" :: Maybe (String) }) -> SummarizedCounter
```

Constructs SummarizedCounter's fields from required parameters

#### `SummarizedCounterList`

``` purescript
newtype SummarizedCounterList
  = SummarizedCounterList (Array SummarizedCounter)
```

##### Instances
``` purescript
Newtype SummarizedCounterList _
Generic SummarizedCounterList _
Show SummarizedCounterList
Decode SummarizedCounterList
Encode SummarizedCounterList
```

#### `TimeRange`

``` purescript
newtype TimeRange
  = TimeRange { "FromInclusive" :: Maybe (AttackTimestamp), "ToExclusive" :: Maybe (AttackTimestamp) }
```

<p>The time range.</p>

##### Instances
``` purescript
Newtype TimeRange _
Generic TimeRange _
Show TimeRange
Decode TimeRange
Encode TimeRange
```

#### `newTimeRange`

``` purescript
newTimeRange :: TimeRange
```

Constructs TimeRange from required parameters

#### `newTimeRange'`

``` purescript
newTimeRange' :: ({ "FromInclusive" :: Maybe (AttackTimestamp), "ToExclusive" :: Maybe (AttackTimestamp) } -> { "FromInclusive" :: Maybe (AttackTimestamp), "ToExclusive" :: Maybe (AttackTimestamp) }) -> TimeRange
```

Constructs TimeRange's fields from required parameters

#### `Token`

``` purescript
newtype Token
  = Token String
```

##### Instances
``` purescript
Newtype Token _
Generic Token _
Show Token
Decode Token
Encode Token
```

#### `TopContributors`

``` purescript
newtype TopContributors
  = TopContributors (Array Contributor)
```

##### Instances
``` purescript
Newtype TopContributors _
Generic TopContributors _
Show TopContributors
Decode TopContributors
Encode TopContributors
```

#### `Unit''`

``` purescript
newtype Unit''
  = Unit'' String
```

##### Instances
``` purescript
Newtype Unit'' _
Generic Unit'' _
Show Unit''
Decode Unit''
Encode Unit''
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


