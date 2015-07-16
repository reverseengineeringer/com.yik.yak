.class public LCN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/WebActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/WebActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, LCN;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, LCN;->a:Lcom/yik/yak/ui/activity/WebActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/WebActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 203
    return-void
.end method
