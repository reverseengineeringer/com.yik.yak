.class public LAT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(Lcom/yik/yak/ui/activity/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 91
    iget-object v1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->g()V

    .line 92
    iget-object v1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/MainActivity;->h()V

    .line 93
    iget-object v1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 94
    iget-object v1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->c(Landroid/support/v4/app/Fragment;)V

    .line 95
    iget-object v1, p0, LAT;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 96
    return-void
.end method
