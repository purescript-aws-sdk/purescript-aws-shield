## Module AWS.Shield.Requests

#### `createProtection`

``` purescript
createProtection :: forall eff. Service -> CreateProtectionRequest -> Aff (exception :: EXCEPTION | eff) CreateProtectionResponse
```

<p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.</p>

#### `createSubscription`

``` purescript
createSubscription :: forall eff. Service -> CreateSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) CreateSubscriptionResponse
```

<p>Activates AWS Shield Advanced for an account.</p>

#### `deleteProtection`

``` purescript
deleteProtection :: forall eff. Service -> DeleteProtectionRequest -> Aff (exception :: EXCEPTION | eff) DeleteProtectionResponse
```

<p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>

#### `deleteSubscription`

``` purescript
deleteSubscription :: forall eff. Service -> DeleteSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DeleteSubscriptionResponse
```

<p>Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. </p>

#### `describeAttack`

``` purescript
describeAttack :: forall eff. Service -> DescribeAttackRequest -> Aff (exception :: EXCEPTION | eff) DescribeAttackResponse
```

<p>Describes the details of a DDoS attack. </p>

#### `describeProtection`

``` purescript
describeProtection :: forall eff. Service -> DescribeProtectionRequest -> Aff (exception :: EXCEPTION | eff) DescribeProtectionResponse
```

<p>Lists the details of a <a>Protection</a> object.</p>

#### `describeSubscription`

``` purescript
describeSubscription :: forall eff. Service -> DescribeSubscriptionRequest -> Aff (exception :: EXCEPTION | eff) DescribeSubscriptionResponse
```

<p>Provides details about the AWS Shield Advanced subscription for an account.</p>

#### `getSubscriptionState`

``` purescript
getSubscriptionState :: forall eff. Service -> GetSubscriptionStateRequest -> Aff (exception :: EXCEPTION | eff) GetSubscriptionStateResponse
```

<p>Returns the <code>SubscriptionState</code>, either <code>Active</code> or <code>Inactive</code>.</p>

#### `listAttacks`

``` purescript
listAttacks :: forall eff. Service -> ListAttacksRequest -> Aff (exception :: EXCEPTION | eff) ListAttacksResponse
```

<p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>

#### `listProtections`

``` purescript
listProtections :: forall eff. Service -> ListProtectionsRequest -> Aff (exception :: EXCEPTION | eff) ListProtectionsResponse
```

<p>Lists all <a>Protection</a> objects for the account.</p>


