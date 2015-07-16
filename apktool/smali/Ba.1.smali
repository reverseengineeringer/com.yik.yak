.class public LBa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, LBa;->b:Lcom/yik/yak/ui/activity/MainActivity;

    iput-object p2, p0, LBa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, LBa;->b:Lcom/yik/yak/ui/activity/MainActivity;

    sget-object v1, LCU;->d:LCU;

    iget-object v2, p0, LBa;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->b(Ljava/lang/String;)Lcom/yik/yak/ui/fragment/ContactUsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;Landroid/support/v4/app/Fragment;)V

    .line 628
    return-void
.end method
