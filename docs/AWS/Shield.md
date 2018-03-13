## Module AWS.Shield

<fullname>AWS Shield Advanced</fullname> <p>This is the <i>AWS Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF and AWS Shield Developer Guide</a>.</p>

#### `createProtection`

``` purescript
createProtection :: forall eff. CreateProtectionRequest -> Aff (exception :: EXCEPTION | eff) CreateProtectionResponse
```

<p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.</p>

#### `createSubscription`

``` purescript
createSubscription :: forall eff. CreateSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) CreateSubscriptionResponse
```

<p>Activates AWS Shield Advanced for an account.</p>

#### `deleteProtection`

``` purescript
deleteProtection :: forall eff. DeleteProtectionRequest -> Aff (exception :: EXCEPTION | eff) DeleteProtectionResponse
```

<p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>

#### `deleteSubscription`

``` purescript
deleteSubscription :: forall eff. DeleteSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubscriptionResponse
```

<p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>

#### `describeAttack`

``` purescript
describeAttack :: forall eff. DescribeAttackRequest -> Aff (exception :: EXCEPTION | eff) DescribeAttackResponse
```

<p>Describes the details of a DDoS attack. </p>

#### `describeProtection`

``` purescript
describeProtection :: forall eff. DescribeProtectionRequest -> Aff (exception :: EXCEPTION | eff) DescribeProtectionResponse
```

<p>Lists the details of a <a>Protection</a> object.</p>

#### `describeSubscription`

``` purescript
describeSubscription :: forall eff. DescribeSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscriptionResponse
```

<p>Provides details about the AWS Shield Advanced subscription for an account.</p>

#### `getSubscriptionState`

``` purescript
getSubscriptionState :: forall eff. GetSubscriptionStateRequest -> Aff (exception :: EXCEPTION | eff) GetSubscriptionStateResponse
```

<p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>

#### `listAttacks`

``` purescript
listAttacks :: forall eff. ListAttacksRequest -> Aff (exception :: EXCEPTION | eff) ListAttacksResponse
```

<p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>

#### `listProtections`

``` purescript
listProtections :: forall eff. ListProtectionsRequest -> Aff (exception :: EXCEPTION | eff) ListProtectionsResponse
```

<p>Lists all <a>Protection</a> objects for the account.</p>

#### `AttackDetail`

``` purescript
newtype AttackDetail
  = AttackDetail { "AttackId" :: NullOrUndefined (AttackId), "ResourceArn" :: NullOrUndefined (ResourceArn), "SubResources" :: NullOrUndefined (SubResourceSummaryList), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackCounters" :: NullOrUndefined (SummarizedCounterList), "AttackProperties" :: NullOrUndefined (AttackProperties), "Mitigations" :: NullOrUndefined (MitigationList) }
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
newAttackDetail' :: ({ "AttackId" :: NullOrUndefined (AttackId), "ResourceArn" :: NullOrUndefined (ResourceArn), "SubResources" :: NullOrUndefined (SubResourceSummaryList), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackCounters" :: NullOrUndefined (SummarizedCounterList), "AttackProperties" :: NullOrUndefined (AttackProperties), "Mitigations" :: NullOrUndefined (MitigationList) } -> { "AttackId" :: NullOrUndefined (AttackId), "ResourceArn" :: NullOrUndefined (ResourceArn), "SubResources" :: NullOrUndefined (SubResourceSummaryList), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackCounters" :: NullOrUndefined (SummarizedCounterList), "AttackProperties" :: NullOrUndefined (AttackProperties), "Mitigations" :: NullOrUndefined (MitigationList) }) -> AttackDetail
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
  = AttackProperty { "AttackLayer" :: NullOrUndefined (AttackLayer), "AttackPropertyIdentifier" :: NullOrUndefined (AttackPropertyIdentifier), "TopContributors" :: NullOrUndefined (TopContributors), "Unit" :: NullOrUndefined (Unit''), "Total" :: NullOrUndefined (Number) }
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
newAttackProperty' :: ({ "AttackLayer" :: NullOrUndefined (AttackLayer), "AttackPropertyIdentifier" :: NullOrUndefined (AttackPropertyIdentifier), "TopContributors" :: NullOrUndefined (TopContributors), "Unit" :: NullOrUndefined (Unit''), "Total" :: NullOrUndefined (Number) } -> { "AttackLayer" :: NullOrUndefined (AttackLayer), "AttackPropertyIdentifier" :: NullOrUndefined (AttackPropertyIdentifier), "TopContributors" :: NullOrUndefined (TopContributors), "Unit" :: NullOrUndefined (Unit''), "Total" :: NullOrUndefined (Number) }) -> AttackProperty
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
  = AttackSummary { "AttackId" :: NullOrUndefined (String), "ResourceArn" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackVectors" :: NullOrUndefined (AttackVectorDescriptionList) }
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
newAttackSummary' :: ({ "AttackId" :: NullOrUndefined (String), "ResourceArn" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackVectors" :: NullOrUndefined (AttackVectorDescriptionList) } -> { "AttackId" :: NullOrUndefined (String), "ResourceArn" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (AttackTimestamp), "EndTime" :: NullOrUndefined (AttackTimestamp), "AttackVectors" :: NullOrUndefined (AttackVectorDescriptionList) }) -> AttackSummary
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
  = Contributor { "Name" :: NullOrUndefined (String), "Value" :: NullOrUndefined (Number) }
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
newContributor' :: ({ "Name" :: NullOrUndefined (String), "Value" :: NullOrUndefined (Number) } -> { "Name" :: NullOrUndefined (String), "Value" :: NullOrUndefined (Number) }) -> Contributor
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
  = CreateProtectionResponse { "ProtectionId" :: NullOrUndefined (ProtectionId) }
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
newCreateProtectionResponse' :: ({ "ProtectionId" :: NullOrUndefined (ProtectionId) } -> { "ProtectionId" :: NullOrUndefined (ProtectionId) }) -> CreateProtectionResponse
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
  = DescribeAttackResponse { "Attack" :: NullOrUndefined (AttackDetail) }
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
newDescribeAttackResponse' :: ({ "Attack" :: NullOrUndefined (AttackDetail) } -> { "Attack" :: NullOrUndefined (AttackDetail) }) -> DescribeAttackResponse
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
  = DescribeProtectionResponse { "Protection" :: NullOrUndefined (Protection) }
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
newDescribeProtectionResponse' :: ({ "Protection" :: NullOrUndefined (Protection) } -> { "Protection" :: NullOrUndefined (Protection) }) -> DescribeProtectionResponse
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
  = DescribeSubscriptionResponse { "Subscription" :: NullOrUndefined (Subscription) }
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
newDescribeSubscriptionResponse' :: ({ "Subscription" :: NullOrUndefined (Subscription) } -> { "Subscription" :: NullOrUndefined (Subscription) }) -> DescribeSubscriptionResponse
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
  = InternalErrorException { message :: NullOrUndefined (ErrorMessage') }
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
newInternalErrorException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidOperationException`

``` purescript
newtype InvalidOperationException
  = InvalidOperationException { message :: NullOrUndefined (ErrorMessage') }
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
newInvalidOperationException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidOperationException
```

Constructs InvalidOperationException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (ErrorMessage') }
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
newInvalidParameterException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidResourceException`

``` purescript
newtype InvalidResourceException
  = InvalidResourceException { message :: NullOrUndefined (ErrorMessage') }
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
newInvalidResourceException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> InvalidResourceException
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
  = LimitsExceededException { message :: NullOrUndefined (ErrorMessage'), "Type" :: NullOrUndefined (LimitType), "Limit" :: NullOrUndefined (LimitNumber) }
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
newLimitsExceededException' :: ({ message :: NullOrUndefined (ErrorMessage'), "Type" :: NullOrUndefined (LimitType), "Limit" :: NullOrUndefined (LimitNumber) } -> { message :: NullOrUndefined (ErrorMessage'), "Type" :: NullOrUndefined (LimitType), "Limit" :: NullOrUndefined (LimitNumber) }) -> LimitsExceededException
```

Constructs LimitsExceededException's fields from required parameters

#### `ListAttacksRequest`

``` purescript
newtype ListAttacksRequest
  = ListAttacksRequest { "ResourceArns" :: NullOrUndefined (ResourceArnFilterList), "StartTime" :: NullOrUndefined (TimeRange), "EndTime" :: NullOrUndefined (TimeRange), "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListAttacksRequest' :: ({ "ResourceArns" :: NullOrUndefined (ResourceArnFilterList), "StartTime" :: NullOrUndefined (TimeRange), "EndTime" :: NullOrUndefined (TimeRange), "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ResourceArns" :: NullOrUndefined (ResourceArnFilterList), "StartTime" :: NullOrUndefined (TimeRange), "EndTime" :: NullOrUndefined (TimeRange), "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListAttacksRequest
```

Constructs ListAttacksRequest's fields from required parameters

#### `ListAttacksResponse`

``` purescript
newtype ListAttacksResponse
  = ListAttacksResponse { "AttackSummaries" :: NullOrUndefined (AttackSummaries), "NextToken" :: NullOrUndefined (Token) }
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
newListAttacksResponse' :: ({ "AttackSummaries" :: NullOrUndefined (AttackSummaries), "NextToken" :: NullOrUndefined (Token) } -> { "AttackSummaries" :: NullOrUndefined (AttackSummaries), "NextToken" :: NullOrUndefined (Token) }) -> ListAttacksResponse
```

Constructs ListAttacksResponse's fields from required parameters

#### `ListProtectionsRequest`

``` purescript
newtype ListProtectionsRequest
  = ListProtectionsRequest { "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListProtectionsRequest' :: ({ "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "NextToken" :: NullOrUndefined (Token), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListProtectionsRequest
```

Constructs ListProtectionsRequest's fields from required parameters

#### `ListProtectionsResponse`

``` purescript
newtype ListProtectionsResponse
  = ListProtectionsResponse { "Protections" :: NullOrUndefined (Protections), "NextToken" :: NullOrUndefined (Token) }
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
newListProtectionsResponse' :: ({ "Protections" :: NullOrUndefined (Protections), "NextToken" :: NullOrUndefined (Token) } -> { "Protections" :: NullOrUndefined (Protections), "NextToken" :: NullOrUndefined (Token) }) -> ListProtectionsResponse
```

Constructs ListProtectionsResponse's fields from required parameters

#### `LockedSubscriptionException`

``` purescript
newtype LockedSubscriptionException
  = LockedSubscriptionException { message :: NullOrUndefined (ErrorMessage') }
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
newLockedSubscriptionException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> LockedSubscriptionException
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
  = Mitigation { "MitigationName" :: NullOrUndefined (String) }
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
newMitigation' :: ({ "MitigationName" :: NullOrUndefined (String) } -> { "MitigationName" :: NullOrUndefined (String) }) -> Mitigation
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
  = OptimisticLockException { message :: NullOrUndefined (ErrorMessage') }
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
newOptimisticLockException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> OptimisticLockException
```

Constructs OptimisticLockException's fields from required parameters

#### `Protection`

``` purescript
newtype Protection
  = Protection { "Id" :: NullOrUndefined (ProtectionId), "Name" :: NullOrUndefined (ProtectionName), "ResourceArn" :: NullOrUndefined (ResourceArn) }
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
newProtection' :: ({ "Id" :: NullOrUndefined (ProtectionId), "Name" :: NullOrUndefined (ProtectionName), "ResourceArn" :: NullOrUndefined (ResourceArn) } -> { "Id" :: NullOrUndefined (ProtectionId), "Name" :: NullOrUndefined (ProtectionName), "ResourceArn" :: NullOrUndefined (ResourceArn) }) -> Protection
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
  = ResourceAlreadyExistsException { message :: NullOrUndefined (ErrorMessage') }
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
newResourceAlreadyExistsException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ResourceAlreadyExistsException
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
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage') }
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
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage') } -> { message :: NullOrUndefined (ErrorMessage') }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `SubResourceSummary`

``` purescript
newtype SubResourceSummary
  = SubResourceSummary { "Type" :: NullOrUndefined (SubResourceType), "Id" :: NullOrUndefined (String), "AttackVectors" :: NullOrUndefined (SummarizedAttackVectorList), "Counters" :: NullOrUndefined (SummarizedCounterList) }
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
newSubResourceSummary' :: ({ "Type" :: NullOrUndefined (SubResourceType), "Id" :: NullOrUndefined (String), "AttackVectors" :: NullOrUndefined (SummarizedAttackVectorList), "Counters" :: NullOrUndefined (SummarizedCounterList) } -> { "Type" :: NullOrUndefined (SubResourceType), "Id" :: NullOrUndefined (String), "AttackVectors" :: NullOrUndefined (SummarizedAttackVectorList), "Counters" :: NullOrUndefined (SummarizedCounterList) }) -> SubResourceSummary
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
  = Subscription { "StartTime" :: NullOrUndefined (Timestamp), "TimeCommitmentInSeconds" :: NullOrUndefined (DurationInSeconds) }
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
newSubscription' :: ({ "StartTime" :: NullOrUndefined (Timestamp), "TimeCommitmentInSeconds" :: NullOrUndefined (DurationInSeconds) } -> { "StartTime" :: NullOrUndefined (Timestamp), "TimeCommitmentInSeconds" :: NullOrUndefined (DurationInSeconds) }) -> Subscription
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
  = SummarizedAttackVector { "VectorType" :: String, "VectorCounters" :: NullOrUndefined (SummarizedCounterList) }
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
newSummarizedAttackVector' :: String -> ({ "VectorType" :: String, "VectorCounters" :: NullOrUndefined (SummarizedCounterList) } -> { "VectorType" :: String, "VectorCounters" :: NullOrUndefined (SummarizedCounterList) }) -> SummarizedAttackVector
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
  = SummarizedCounter { "Name" :: NullOrUndefined (String), "Max" :: NullOrUndefined (Number), "Average" :: NullOrUndefined (Number), "Sum" :: NullOrUndefined (Number), "N" :: NullOrUndefined (Int), "Unit" :: NullOrUndefined (String) }
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
newSummarizedCounter' :: ({ "Name" :: NullOrUndefined (String), "Max" :: NullOrUndefined (Number), "Average" :: NullOrUndefined (Number), "Sum" :: NullOrUndefined (Number), "N" :: NullOrUndefined (Int), "Unit" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Max" :: NullOrUndefined (Number), "Average" :: NullOrUndefined (Number), "Sum" :: NullOrUndefined (Number), "N" :: NullOrUndefined (Int), "Unit" :: NullOrUndefined (String) }) -> SummarizedCounter
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
  = TimeRange { "FromInclusive" :: NullOrUndefined (AttackTimestamp), "ToExclusive" :: NullOrUndefined (AttackTimestamp) }
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
newTimeRange' :: ({ "FromInclusive" :: NullOrUndefined (AttackTimestamp), "ToExclusive" :: NullOrUndefined (AttackTimestamp) } -> { "FromInclusive" :: NullOrUndefined (AttackTimestamp), "ToExclusive" :: NullOrUndefined (AttackTimestamp) }) -> TimeRange
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


