.class public final Lcom/google/android/gms/internal/ns;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Ljy;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/nu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ns;->CREATOR:Ljy;

    return-void
.end method

.method public constructor <init>(IIILcom/google/android/gms/internal/nu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ns;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ns;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ns;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ns;->d:Lcom/google/android/gms/internal/nu;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ns;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ns;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ns;->c:I

    return v0
.end method

.method public d()Lcom/google/android/gms/internal/nu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ns;->d:Lcom/google/android/gms/internal/nu;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ns;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ns;

    iget v2, p0, Lcom/google/android/gms/internal/ns;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ns;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ns;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ns;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ns;->d:Lcom/google/android/gms/internal/nu;

    iget-object v3, p1, Lcom/google/android/gms/internal/ns;->d:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ns;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ns;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LiA;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LiA;->a(Ljava/lang/Object;)LiC;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/internal/ns;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LiC;->a(Ljava/lang/String;Ljava/lang/Object;)LiC;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/internal/ns;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LiC;->a(Ljava/lang/String;Ljava/lang/Object;)LiC;

    move-result-object v0

    const-string v1, "placeFilter"

    iget-object v2, p0, Lcom/google/android/gms/internal/ns;->d:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v0, v1, v2}, LiC;->a(Ljava/lang/String;Ljava/lang/Object;)LiC;

    move-result-object v0

    invoke-virtual {v0}, LiC;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljy;->a(Lcom/google/android/gms/internal/ns;Landroid/os/Parcel;I)V

    return-void
.end method
