.class Lfh;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method private constructor <init>(Lfb;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lfh;->a:Lfb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfb;Lfc;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lfh;-><init>(Lfb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lfh;->a:Lfb;

    invoke-static {v0}, Lfb;->b(Lfb;)Lff;

    move-result-object v0

    sget-object v1, Lff;->a:Lff;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v0, p0, Lfh;->a:Lfb;

    invoke-static {v0}, Lfb;->c(Lfb;)V

    .line 409
    :cond_0
    return-void
.end method
