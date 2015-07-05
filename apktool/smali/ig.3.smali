.class public final Lig;
.super Lis;


# instance fields
.field private a:Lid;


# direct methods
.method public constructor <init>(Lid;)V
    .locals 0

    invoke-direct {p0}, Lis;-><init>()V

    iput-object p1, p0, Lig;->a:Lid;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lig;->a:Lid;

    invoke-static {v0, v1}, LiE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lig;->a:Lid;

    invoke-virtual {v0, p1, p2, p3}, Lid;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lig;->a:Lid;

    return-void
.end method
