.class LkC;
.super Lmb;


# instance fields
.field final synthetic a:Lks;

.field final synthetic b:LkB;


# direct methods
.method constructor <init>(LkB;Lks;)V
    .locals 0

    iput-object p1, p0, LkC;->b:LkB;

    iput-object p2, p0, LkC;->a:Lks;

    invoke-direct {p0}, Lmb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LkO;)V
    .locals 1

    new-instance v0, Lki;

    invoke-direct {v0, p1}, Lki;-><init>(LkO;)V

    return-void
.end method
