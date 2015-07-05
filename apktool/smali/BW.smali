.class public LBW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, LBW;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, LBW;->a:Lcom/yik/yak/ui/activity/SendAYak;

    iget-object v1, p0, LBW;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/SendAYak;->d(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->c(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V

    .line 1018
    return-void
.end method
