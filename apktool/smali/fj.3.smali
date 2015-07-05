.class Lfj;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method private constructor <init>(Lfb;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lfj;->a:Lfb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfb;Lfc;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lfj;-><init>(Lfb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lfj;->a:Lfb;

    invoke-static {v0}, Lfb;->d(Lfb;)V

    .line 416
    return-void
.end method
