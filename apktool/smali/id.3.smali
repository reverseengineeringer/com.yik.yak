.class public final Lid;
.super Lip;


# instance fields
.field private a:Lia;


# direct methods
.method public constructor <init>(Lia;)V
    .locals 0

    invoke-direct {p0}, Lip;-><init>()V

    iput-object p1, p0, Lid;->a:Lia;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lid;->a:Lia;

    invoke-static {v0, v1}, LiB;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lid;->a:Lia;

    invoke-virtual {v0, p1, p2, p3}, Lia;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lid;->a:Lia;

    return-void
.end method
