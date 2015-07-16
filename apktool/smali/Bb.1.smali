.class public LBb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/data/models/PeekLocation;

.field final synthetic b:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, LBb;->b:Lcom/yik/yak/ui/activity/MainActivity;

    iput-object p2, p0, LBb;->a:Lcom/yik/yak/data/models/PeekLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, LBb;->b:Lcom/yik/yak/ui/activity/MainActivity;

    sget-object v1, LCU;->b:LCU;

    iget-object v2, p0, LBb;->a:Lcom/yik/yak/data/models/PeekLocation;

    invoke-static {v2}, Lcom/yik/yak/ui/fragment/PeekFragment;->a(Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/ui/fragment/PeekFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;Landroid/support/v4/app/Fragment;)V

    .line 646
    return-void
.end method
