.class public LAR;
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
    .line 584
    iput-object p1, p0, LAR;->b:Lcom/yik/yak/ui/activity/MainActivity;

    iput-object p2, p0, LAR;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, LAR;->b:Lcom/yik/yak/ui/activity/MainActivity;

    sget-object v1, LCH;->d:LCH;

    iget-object v2, p0, LAR;->a:Ljava/lang/String;

    invoke-static {v2}, LDJ;->b(Ljava/lang/String;)LDJ;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCH;Landroid/support/v4/app/Fragment;)V

    .line 588
    return-void
.end method
