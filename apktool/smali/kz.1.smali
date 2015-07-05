.class Lkz;
.super Lmw;


# instance fields
.field final synthetic a:Lkw;

.field final synthetic b:Lky;


# direct methods
.method constructor <init>(Lky;Lkw;)V
    .locals 0

    iput-object p1, p0, Lkz;->b:Lky;

    iput-object p2, p0, Lkz;->a:Lkw;

    invoke-direct {p0}, Lmw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lla;)V
    .locals 1

    new-instance v0, Lkx;

    invoke-direct {v0, p1}, Lkx;-><init>(Lla;)V

    return-void
.end method
