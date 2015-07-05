.class Ljs;
.super Lkf;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method constructor <init>(LjZ;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lkf;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljr;

    invoke-direct {v0, p1}, Ljr;-><init>(LjZ;)V

    :goto_0
    iput-object v0, p0, Ljs;->a:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance v0, Ljr;

    invoke-direct {v0, p1, p2}, Ljr;-><init>(LjZ;Landroid/os/Looper;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Ljs;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Ljs;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
