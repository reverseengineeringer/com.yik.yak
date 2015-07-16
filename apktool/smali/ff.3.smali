.class Lff;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:LeX;


# direct methods
.method private constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lff;->a:LeX;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LeX;LeY;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lff;-><init>(LeX;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lff;->a:LeX;

    invoke-static {v0}, LeX;->d(LeX;)V

    .line 416
    return-void
.end method
