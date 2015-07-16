.class Lfd;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:LeX;


# direct methods
.method private constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lfd;->a:LeX;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LeX;LeY;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lfd;-><init>(LeX;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lfd;->a:LeX;

    invoke-static {v0}, LeX;->b(LeX;)Lfb;

    move-result-object v0

    sget-object v1, Lfb;->a:Lfb;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lfd;->a:LeX;

    invoke-static {v0}, LeX;->c(LeX;)V

    .line 409
    :cond_0
    return-void
.end method
