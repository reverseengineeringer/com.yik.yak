.class Lha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LgZ;


# direct methods
.method constructor <init>(LgZ;)V
    .locals 0

    iput-object p1, p0, Lha;->a:LgZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lha;->a:LgZ;

    invoke-static {v0}, LgZ;->a(LgZ;)V

    return-void
.end method
