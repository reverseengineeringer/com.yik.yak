.class public LCt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SplashScreen;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, LCt;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, LCt;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->finish()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, LCt;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->e(Lcom/yik/yak/ui/activity/SplashScreen;)V

    goto :goto_0
.end method
