.class public LCs;
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
    .line 311
    iput-object p1, p0, LCs;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, LCs;->a:Lcom/yik/yak/ui/activity/SplashScreen;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SplashScreen;->g(Lcom/yik/yak/ui/activity/SplashScreen;)V

    .line 315
    return-void
.end method
