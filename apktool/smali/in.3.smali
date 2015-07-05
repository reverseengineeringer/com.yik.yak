.class final Lin;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lim;

.field private final b:Ljava/lang/String;

.field private final c:Lio;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lid",
            "<*>.ih;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Landroid/os/IBinder;

.field private h:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lim;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lin;->a:Lim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lin;->b:Ljava/lang/String;

    new-instance v0, Lio;

    invoke-direct {v0, p0}, Lio;-><init>(Lin;)V

    iput-object v0, p0, Lin;->c:Lio;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lin;->d:Ljava/util/HashSet;

    const/4 v0, 0x2

    iput v0, p0, Lin;->e:I

    return-void
.end method

.method static synthetic a(Lin;I)I
    .locals 0

    iput p1, p0, Lin;->e:I

    return p1
.end method

.method static synthetic a(Lin;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lin;->h:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lin;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lin;->g:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lin;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lin;->d:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lin;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lin;->c:Lio;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lin;->f:Z

    iget-boolean v0, p0, Lin;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lin;->e:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin;->c:Lio;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public a(Lih;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid",
            "<*>.ih;)V"
        }
    .end annotation

    iget-object v0, p0, Lin;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lin;->c:Lio;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lin;->f:Z

    const/4 v0, 0x2

    iput v0, p0, Lin;->e:I

    return-void
.end method

.method public b(Lih;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid",
            "<*>.ih;)V"
        }
    .end annotation

    iget-object v0, p0, Lin;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lih;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid",
            "<*>.ih;)Z"
        }
    .end annotation

    iget-object v0, p0, Lin;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lin;->f:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lin;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lin;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lin;->g:Landroid/os/IBinder;

    return-object v0
.end method

.method public h()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lin;->h:Landroid/content/ComponentName;

    return-object v0
.end method
