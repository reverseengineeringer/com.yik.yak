.class public abstract Lcom/yik/yak/data/models/YikYakObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mId:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yik/yak/data/models/YikYakObject;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yik/yak/data/models/YikYakObject;->mId:Ljava/lang/Integer;

    .line 26
    return-void
.end method
