.class public Lcom/yik/yak/data/models/Configuration$EndPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isDefault:Z

.field public maxLatitude:D

.field public maxLongitude:D

.field public minLatitude:D

.field public minLongitude:D

.field final synthetic this$0:Lcom/yik/yak/data/models/Configuration;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yik/yak/data/models/Configuration;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yik/yak/data/models/Configuration$EndPoint;->this$0:Lcom/yik/yak/data/models/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/data/models/Configuration$EndPoint;->isDefault:Z

    return-void
.end method
