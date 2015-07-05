.class public LCv;
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
    .line 173
    iput-object p1, p0, LCv;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, LCv;->a:Lcom/yik/yak/ui/activity/WebActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/WebActivity;->c(Lcom/yik/yak/ui/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 177
    return-void
.end method
