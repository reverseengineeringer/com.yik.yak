.class public Lcom/yik/yak/data/models/Configuration$RatingThresholdConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ratingRetryInterval:I

.field public ratingThreshold:I

.field final synthetic this$0:Lcom/yik/yak/data/models/Configuration;


# direct methods
.method public constructor <init>(Lcom/yik/yak/data/models/Configuration;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yik/yak/data/models/Configuration$RatingThresholdConfiguration;->this$0:Lcom/yik/yak/data/models/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/yik/yak/data/models/Configuration$RatingThresholdConfiguration;->ratingThreshold:I

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lcom/yik/yak/data/models/Configuration$RatingThresholdConfiguration;->ratingRetryInterval:I

    return-void
.end method
